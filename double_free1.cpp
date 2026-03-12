#include <cstring>
#include <iostream>
using namespace std;
class Student {
private:
    char *name_;
    int id_;

public :
    Student(const char *name, int id) : id_(id) {
        name_ = new char[strlen(name) + 1];
        strcpy(name_, name);
    }
    ~Student() {
        delete[] name_;
    }

    void setId(int id) {
        id_ = id;
    }
    void getInfo() const {
        cout << "Name: " << name_ << ", ID: " << id_ << endl;
    }
    Student (const Student& other) : id_(other.id_){
        name_=new char[strlen(other.name_)+1];
        strcpy(name_, other.name_);
        cout<<"copy constructor invokation: " << name_ << " completed."<<std::endl;
    }
    Student& operator=(const Student& other) {
        if (this == &other) return *this;
        delete[] name_;
        name_ = new char[strlen(other.name_) + 1];
        strcpy(name_, other.name_);
        id_ = other.id_;
        return *this;
    }
};

int main() {
    Student s1("Jack", 10101);
    Student s2("Family", 103);
    s2 = s1;
    s2.setId(20);
    s1.getInfo();
    s2.getInfo();
    return 0;
}