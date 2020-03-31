#include "Kernel.h"
#include "Utils.h"
#include "Memory.h"
#include "Colors.h"

#include <string>
#include <iostream>

using namespace std;

int main(int argc, char **argv) {
    string inLine = "", outLine;
    bool bootstrap = true;
    bool convert = false;
    if (argc > 0) {
        string s = argv[argc - 1];
        if (s == "--manual") {
            bootstrap = false;
        }
        else if (s == "--convert") {
            bootstrap = false;
            convert = true;
        }
    }
    Kernel *k = new Kernel();
    if (bootstrap) {
        cout << k->bootstrap() << endl;
    }
    if (convert) {
        k->convertTempAiml();
        return 0;
    }
    string botName = k->respond("BOT NAME", "system");
    string userName = "localhost";
    while (inLine != "exit") {
        userName = Memory::getValue("name", "Mr Nhat");
        if (userName.empty()) {
            userName = "Mr Nhat";
        }
        cout << userName << " > " << KBLU;
        getline(cin, inLine);
        cout << RST;
        outLine = Kernel::respond(inLine, userName);
        if (outLine.length() > 0) {
            cout << botName << " > " << KGRN << trim(outLine) << RST << endl;
        }
    }
}
