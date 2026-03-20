#include <iostream>
#include <cstring>
using namespace std;
class Shape {
    public:
    Shape() {cout << "S+ ";}
    virtual void draw() const {cout << "Shape ";}
    virtual ~Shape() {cout << "S- ";}
};
class Label : public Shape {
    char* text;
    public: 
    Label(const char* t) {
        text = new char[strlen(t) +1];
        strcpy(text, t);
        cout << "L+ ";
    }
    void draw() const override {cout<<"Label(" << text << ") ";}
    ~Label() {delete[] text; cout<<"L- ";}
};
void paint(Shape s) {
    s.draw();
}
int main() {
    Label a("A");
    cout << "| ";

    Shape* p = new Label("B");
    cout<<"| ";

    p->draw();
    cout<<"| ";
    paint(a);
    cout<<"| ";

    Label b = a;
    cout <<"| ";

    delete p;
    return 0;
}