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
};
struct Rect: public Shape {
    double w, h;
    Rect(double ww, double hh) : w(ww), h(hh) {}
    double area() const {
        return w * h;
    }
    Shape* clone() const {
        return new Rect(*this);
    }
};
class Scene {
    vector<Shape*> v;
    public:
    Scene() {}
    ~Scene() { for (size_t i = 0; i < v.size(); ++i) delete v[i];}
    Scene (const Scene& s) {
        for (size_t i = 0; i < s.v.size(); ++i) {
            this->add(*s.v[i]);
        }
    }
    Scene& operator=(const Scene& s) {
        if (this == &s) {
            return *this;
        }
        for (size_t i = 0; i < v.size(); ++i){
            delete v[i];
        }
        v.clear();
        for (size_t i = 0; i < s.v.size(); ++i) {
            this->add(*s.v[i]);
        }
        return *this;
    }
    void add(const Shape& s) {
        v.push_back(s.clone());
    }
    double total() const {
        double sum = 0;
        for (size_t i = 0; i < v.size(); ++i) {
            sum += v[i]->area(); //(*v[i]).area()
        }
        return sum;
    }
    Scene& operator+=(const Shape& s) {
        this->add(s);
        return *this;
    }
};
int main() {
    Scene a;
    a.add(Circle(2.0));
    a.add(Rect(3.0, 4.0));
    Scene b = a;
    b += Rect(1.0,1.0);
    cout << "A=" << a.total() <<", B=" << b.total() << std::endl;
    return 0;
}