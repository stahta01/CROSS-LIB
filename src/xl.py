#!/bin/python

import shutil

import os,sys

import time

from os import walk

def are_you_sure():
    if sys.version_info[0] < 3:
        return raw_input("Are you sure [Y/N]? ").lower()
    else:
        return input("Are you sure [Y/N]? ").lower()

def multiple_run(mypath,target,threads,optimization):
    projects = []
    for (dirpath, dirnames, filenames) in walk(mypath):
        projects.extend(dirnames)
        break
            
    for project_name in projects:
        make_command = \
            "make " + target + \
                " ZSDCC_MAKEFILE_THREADS_OPTS=\'-j " + threads + "'" \
                " ZSDCC_MAKEFILE_COMPILATION_OPTS=" + optimization + \
                " -f " + mypath+"/"+project_name+"/Makefile."+project_name;

        print("run command : " + make_command)
        print("\n")
        
        os.system(make_command)


def build(params):

    if len(params)<2:
        game_dir = "helloworld"
    else:
        game_dir = params[1]

    if(game_dir in ["tiles","sounds","input","matrix","invaders","zombies"]):
        project_type = "test"
    else:
        project_type = "game" 

    parent_dir = project_type + "s"

    if len(params)<3:
        target = "ncurses"
    else:
        target = params[2]

    if len(params)<4:
        threads = "8"
    else:
        threads = params[3]


    if len(params)>=5 and params[4]=="on":
        optimization = "--max-allocs-per-node200000"
    else:
        optimization = ""
    

    print("Project name       : " + game_dir)
    print("Project type       : " + project_type)
    print("Number of threads  : " + threads)
    print("Extra optimization : " + optimization)

    parent_and_game_dir = parent_dir + "/" + game_dir

    if(game_dir not in ["games", "tests", "all"]):
        if not os.path.exists(parent_and_game_dir):
            print("Project not found!")
            exit();

        make_command = \
            "make " + target + \
                " ZSDCC_MAKEFILE_THREADS_OPTS=\'-j " + threads + "'" \
                " ZSDCC_MAKEFILE_COMPILATION_OPTS=" + optimization + \
                " -f " + parent_dir+"/"+game_dir+"/Makefile."+game_dir;

        print("run command : " + make_command)
        print("\n")

        os.system(make_command)
        
    else:
        if game_dir=="games":
            multiple_run("games",target,threads,optimization)
        elif game_dir=="tests":
            multiple_run("tests",target,threads,optimization)
        elif game_dir=="all":
            multiple_run("games",target,threads,optimization)
            multiple_run("tests",target,threads,optimization)
        else:
            exit()     


def create(params):
    if len(params)<2:
        game_dir = "helloworld"
    else:
        game_dir = params[1]
        if(game_dir in ["chase", "shoot", "bomber", "snake", "horde", "tiles", "matrix", "invaders", "zombies", "sounds"]):
            print("invalid name!")
            exit()

    if len(params)<3:
        project_type = "helloworld"
    else:
        if(params[2]=="game"):
            project_type = "game"
        else: 
            if(params[2] in ["apis","show_apis","test","show"]):
                project_type = "demo"
            else:
                project_type = "helloworld"

    parent_dir = "games" 

    print("New project name: " + game_dir)
    print("Project type: " + project_type)

    parent_and_game_dir = parent_dir + "/" + game_dir

    if not os.path.exists(parent_and_game_dir):
        print("Creating project dir...")
        os.makedirs(parent_and_game_dir)

    source_path = "./template_projects/"+project_type+"_code.template"
    print("source_path: " + source_path)
    dest_path = parent_and_game_dir
    print("dest_path: " + dest_path)

    if not os.path.exists(dest_path+"/tiles"):
        print("Copying tiles...")
        shutil.copytree(source_path+"/tiles", dest_path+"/tiles")

    if not os.path.exists(dest_path+"/generated_assets"):
        print("Create empty generated_assets directory...")
        os.makedirs(dest_path+"/generated_assets")

    file_names = ["char_tiles.h", "images.h", "main.c"]


    for file_name in file_names:
        print("Copying file_name: " + file_name)
        shutil.copy(source_path+"/"+file_name, dest_path)

    templated_makefile_path = "./template_projects"

    shutil.copy(templated_makefile_path+"/"+"Makefile_game.template", "./"+dest_path+"/Makefile."+game_dir)

    #read input file
    fin = open("./"+dest_path+"/Makefile."+game_dir, "rt")
    #read file contents to string
    data = fin.read()
    #replace all occurrences of the required string
    data = data.replace('_GAME_NAME_', game_dir)
    data = data.replace('_PARENT_DIR_', parent_dir)
    #close the input file
    fin.close()
    #open the file in write mode
    fin = open("./"+dest_path+"/Makefile."+game_dir, "wt")
    #overrite the input file with the resulting data
    fin.write(data)
    #close the file
    fin.close()



def clean(params):
    if len(params)<2:
        make_command = "make clean_generic -f makefiles.common/auxiliary/Makefile_common"

        print("Delete all built binaries and non-project specific temporary files")
        if(are_you_sure()=="y"):
            print("run command : " + make_command)
            print("")
            os.system(make_command)
            exit();
        else:
            exit();
    else:
        game_dir = params[1]

    if(game_dir in ["tiles","sounds","input","matrix","invaders","zombies"]):
        project_type = "test"
    else:
        project_type = "game" 

    parent_dir = project_type + "s"

    print("Project name: " + game_dir)


    parent_and_game_dir = parent_dir + "/" + game_dir

    if not os.path.exists(parent_and_game_dir):
        print("Project not found!")
        exit();

    print("Delete all built binaries and temporary files (also specific to '"+game_dir+"', e.g., generated assets)")

    if(are_you_sure()=="y"):
        make_command = "make clean -f " + parent_dir+"/"+game_dir+"/Makefile."+game_dir;

        print("run command : " + make_command)
        print("\n")

        os.system(make_command)
    

def delete(params):
    if len(params)<2:
        game_dir="helloworld"
    else:
        candidate_name = params[1]
        if(candidate_name in ["chase", "shoot", "bomber", "snake", "horde", "tiles", "matrix", "invaders", "zombies", "sounds","input"]):
            print("invalid name!")
            exit()
        else:
            game_dir = candidate_name


    if len(params)<3:
        project_type = "helloworld"
    else:
        if(params[2]=="game"):
            project_type = "game"
        else: 
            if(params[2]=="test"):
                project_type = "test"
            else:
                project_type = "helloworld"


    parent_dir = "games"

    print("Project name: " + game_dir)

    parent_and_game_dir = parent_dir + "/" + game_dir
    print("Remove the project '"+game_dir+"' with all its files (source, graphics assets, makefile)")        
    if are_you_sure()=="y":
        if os.path.exists(parent_and_game_dir):
            print("Deleting directory " + parent_and_game_dir)
            shutil.rmtree(parent_and_game_dir)

        makefile_name = "Makefile."+game_dir
        if os.path.exists(makefile_name):
            print("Deleting..." + makefile_name)
            os.remove(makefile_name)
    print("'" + game_dir + "' deleted")

def list():
    project_dirs = ["tests", "games"]

    projects = []

    print("Searching folders")
    for mypath in project_dirs:
        print(mypath)

    print("")

    for mypath in project_dirs:
        for (dirpath, dirnames, filenames) in walk(mypath):
            projects.extend(dirnames)
            break

    print("Found: " + str(len(projects)))

    print("")

    for project in projects:
        print(project)


def help_help():
    print("Possible commands:")
    print("build, clean, create, delete, help, list")  
    print("")
    print("Use xl.py help <command> for <command>-specific help")
    print("\nExample:")
    print("\nxl.py help create              \n  It displays the help page for the 'create' command")


def help(params):
    if len(params)<2:
        print("\nxl.py <command> <[optional] parameters>")   
        print("\n<parameters>")
        help_help()
    elif params[1]=="build":
        print("xl.py build <project> <[optional] target>")
        print("It builds <project> (game or test) for <target>.")
        print("The built binaries will be in the 'build' directory.")

        print("\n<project>")
        print("If 'games'/'tests'/'all' is used as <project>, then all games/tests/projects are built")   
        
        print("\n<target>")
        print("If no <target> is passed, then the native target (terminal console) is considered.")
        print("\nIf '<dev-kit>_targets' is passed as <target> (e.g., 'cc65_targets'), \nthen the given project/s is/are built for all targets that use <dev-kit> to be compiled.")
        print("Possible dev-kits are: 'cc65', 'z88dk', 'cmoc', 'lcc1802'.") 
        print("\n[NOT recommended] If 'all' is passed as <target>, then the given project/s is/are built for all targets (it may take very long and it requires all supported compilers.") 
        
        print("\nPress ENTER to continue...")
        time.sleep(1)

        if sys.version_info[0] < 3:
            raw_input()
        else:
            input()
        
        print("\nExamples:")
        print("\nxl.py build bomber vic20       \n  It builds Cross Bomber for the Commodore Vic 20 using CC65.")
        print("\nxl.py build snake              \n  It builds Cross Snake for the native target (terminal console).")
        print("\nxl.py build chase cc65_targets \n  It builds Cross Chase for all targets that use CC65 to be built.")
        print("\nxl.py build games cpc          \n  It builds all games for the Amstrad CPC using Z88DK.")
        print("\nxl.py build tests c64          \n  It buidls all tests for the Commodore 64 using CC65.")
        print("\nxl.py build horde all          \n  It builds Cross Horde for all its supported targets using all supported necessary compilers.")
        print("\nxl.py build all c16            \n  It builds all projects (games and tests) for the Commodore 264 series using CC65.")
    elif params[1]=="create":
        print("xl.py create <project> <[optional] type>")
        print("It creates <project>")
        
        print("\n<type>")
        print("If no <type> is passed, then a helloworld initial code is created.")
        print("If 'game' is passed as <type>, then the project is build with some initial template game code.")
        print("If 'apis' is passed as <type>, then the project is build with some code that shows how to use all APIs.")
        
        print("\nExamples:");
        print("\nxl.py create foo               \n  It builds a new project 'foo' with some initial code that display 'hello world' on the screen.")
        print("\nxl.py create bar game          \n  It builds a new project 'bar' with some initial game code (main loop, level loop, etc.).")
    elif params[1]=="delete":
        print("xl.py delete <project>")
        print("It removes <project>, i.e., it deletes its folder with its content (source code, graphics assets, makefile).")
        
        print("\n<project>")
        print("<project> cannot be a built-in project.")
        
        print("\nExample:")
        print("\nxl.py delete foo               \n  It deletes the project 'foo'.")
    elif params[1]=="clean": 
        print("xl.py clean <[optional] project>")
        print("It deletes both built binaries and temporary files created during the build process.")
        print("\n<project>")
        print("If no <project> is passed, only built binaries and non-project specific temporary files are deleted.") 
        print("If the <project> parameter is used, then also project-specific temporary files are deleted (e.g., generated graphics assets).")
        
        print("\nExamples:")
        print("\nxl.py clean                    \n  It deletes all built binaries and non-project specific temporary files.")
        print("\nxl.py clean foo                \n  It deletes all built-in binaries and all temporary files (both generic and project-specific).")
    elif params[1]=="list":  
        print("xl.py list")
        print("It lists all current projects (test projects, built-in games and user-defined games).")
    elif params[1]=="help":
        print("xl.py help <[optional] command>")
        print("It displays help instructions.")
        
        print("\n<command>")
        help_help()
    else:
        print("Command not recognized")
        exit()

# --------------------------

if len(sys.argv)<2:
    print("You need to provide a command")
    help(sys.argv[1:])
elif sys.argv[1]=="build":
    build(sys.argv[1:])
elif sys.argv[1]=="create":
    create(sys.argv[1:])
elif sys.argv[1]=="clean":
    clean(sys.argv[1:])
elif sys.argv[1]=="delete":
    delete(sys.argv[1:])
elif sys.argv[1]=="list":
    list()
elif sys.argv[1]=="help":
    help(sys.argv[1:])
else:
    print("Command not recognized")
    help()
