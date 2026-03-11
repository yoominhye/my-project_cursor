#include <iostream>
#include <vector>
#include <string>
using namespace std;
struct Shape {
    virtual ~Shape() {}
    virtual double area() const = 0;
    virtual Shape* clone() const = 0;
};
struct Circle: public Shape {
    double r;
    Circle(double rr) : r(rr) {}
    double area() const {
        return 3.14159265358979323846 * r * r;
    }
    Shape* clone() const {
        return new Circle(*this);
    }
}
struct Rect: public Shape {
    double w, h;
    Rect(double ww, double hh) : w(ww), h(hh) {}
    double area() const {
        return w * h;
    }
    Shape* clone() const {
        return new Rect(*this);
    }
}
class Scene {
    vector<Shape*> v;
    public:
    Scene() {}
    ~Scene() { for (size_t i = 0; i < v.size(); ++i) delete[] v[i];}
}
