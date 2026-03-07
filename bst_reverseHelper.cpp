#include <iostream>
#include <queue>
#include <vector>

class Node {
    public:
    int data;
    Node *next;
    Node (int val, Node *nextNode = nullptr) {
        data = val;
        next = nextNode;
    }
};
struct TreeNode {
    int data;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int val) : data(val), left(nullptr), right(nullptr) {}
};
TreeNode* insertIntoBST(TreeNode* root, int val) {
    if (root == nullptr) {
        return new TreeNode(val);}
    if (val <= root->data) {
        root->left = insertIntoBST(root->left, val);
    } else {
        root->right = insertIntoBST(root->right, val);}
    return root;

}
TreeNode* createBSTfromBFSOrder(int data[], int size) {
    TreeNode* root =nullptr;
    for (int i = 0; i < size; i++) {
        root = insertIntoBST(root, data[i]);}
    return root;
}

void deleteBST(TreeNode *root) {
    if (root == nullptr) 
        return;
    deleteBST(root->left);
    deleteBST(root->right);
    delete root;
    root = nullptr;
}
class LinkedList {
    private:
    Node *head;
    public:
    LinkedList() : head(nullptr){}
    ~LinkedList() {
        Node *current = head;
        while (current) {
            Node *nextNode = current->next;
            delete current;
            current = nextNode;
        }
        head = nullptr;
        std::cout << "\nLinkedlist destroyed. All nodes deallocated." << std::endl;
    };
    void append(int val) {
        head = new Node(val, head);
    }
    Node* LinkedList:reverseHelper(Node *node, Node *prev){
        if(!node) return prev;
        Node *prev = node->next;
        return reverseHelper(next, node);
    }
    void reverse(){
        Node *prev = nullptr;
        Node *current = head;
        Node *next = nullptr;
        while (current) {
            next = current->next;
            current-> next = prev;
            prev = current;
            current = next;
        }
        head = prev;
    };
    void print() const {
        Node *temp = head;
        while (temp) {
            std::cout << temp->data;
            if (temp->next) std::cout << " -> ";
            temp = temp->next;
        }
        std::cout << std::endl;
    }
    void insertAtBeginning(int data) {
        Node *newNode = new Node(data);
        newNode->next = head;
        head = newNode;
        std::cout << "Inserted " << data << " at the beginning." << std::endl;
    }
    void insertAtEnd(int data) {
        Node *newNode = new Node(data);
        if (head == nullptr) {
            head = newNode;
            std::cout << "Inserted " << data << " at the end (list was empty)." << std::endl;
            return;
        }
        Node *current = head;
        while (current->next) {
            current = current->next;
        }
        current->next = newNode;
        std::cout << "Inserted " << data << " at the end." << std::endl;
    }
};
class Pair {
    private:
    int *first;
    int *second;
    public:
    Pair() :first(nullptr), second(nullptr) {}
    Pair(int *a, int *b) {
        first = a;
        second = b;
    }
    void add (const Pair& other) {
        *first += *other.first;
        *second += *other.second;
    }
    void print() {
        std::cout << "(" << *first << ", " << *second << ")" << std::endl;
    }
};
template <class T>
class TPair {
    private:
    T *first;
    T *second;
    public:
    TPair() :first(nullptr), second(nullptr) {}
    TPair(T *a, T *b) {
        first = a;
        second = b;
    }
    void add (const TPair* other) {
        *first += *other.first;
        *second += *other.second;
    }
    void print() {
        std::cout << "(" << *first << "," << *second << ")" << std::endl;
    }
};
void printBFS(TreeNode *root){
    if (!root) return;
    std::queue<TreeNode*> q;
    q.push(root);
    while (!q.empty()) {
        TreeNode *curr = q.front();
        q.pop();
        std::cout << curr->data << " ";
        if (curr->left) q.push(curr->left);
        if (curr->right) q.push(curr->right);
    }
    std::cout << "\n";
}
void inorderPrint(TreeNode *root){
    if (!root) return;
    inorderPrint(root->left);
    std::cout << root->data << " ";
    inorderPrint(root->right);
}
int main() {
    LinkedList list;
    for (int i = 0; i < 3; i++) {
        list.append(i+1);
        printf("%d ", i+1);
    }
    printf("\n");
    list.print();

//    int data[9] = {30,20,40,10,35,42,37,50,36};
    int data[10] = {30,20,40,10,35,42,37,50,36,30};
    TreeNode *root = createBSTfromBFSOrder(data, 9);
    std::cout << data[0] << " " << data[1] << std::endl;
    for (int i = 0; i < 9; i++) {
        std::cout << data[i] <<" ";
    }
    std::cout << "\n";
    std::cout << "Reconstructed BFS Order: \n";
    printBFS(root); 
    std::cout <<"\n";   
    inorderPrint(root);
    Pair a(data, data+2);
    Pair b(data+1, data+3);
    a.add(b);
    a.print();
    deleteBST(root);
}
