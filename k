/*1. Write a C++ program to store a matrix of given order(Max 10 and Min 5) and arrange the
elements of each row in ascending order using insertion sort.*/
#include <iostream>
using namespace std;

// Function to sort a row using insertion sort
void insertionSort(int arr[], int size) {
    for (int i = 1; i < size; i++) {
        int key = arr[i];
        int j = i - 1;
        // Move elements that are greater than key
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
}

int main() {
    int rows, cols;

    // Input the dimensions of the matrix
    cout << "Enter the number of rows (between 5 and 10): ";
    cin >> rows;
    cout << "Enter the number of columns (between 5 and 10): ";
    cin >> cols;

    // Validate the dimensions
    if (rows < 5 || rows > 10 || cols < 5 || cols > 10) {
        cout << "Invalid matrix size! Please enter dimensions between 5 and 10." << endl;
        return 1;
    }

    int matrix[10][10];

    // Input the matrix
    cout << "Enter the elements of the matrix:" << endl;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cin >> matrix[i][j];
        }
    }

    // Sort each row
    for (int i = 0; i < rows; i++) {
        insertionSort(matrix[i], cols);
    }

    // Output the sorted matrix
    cout << "Matrix after sorting each row in ascending order:" << endl;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
/*=================================================================================================================*/
/*2. Write a C++ program to store a matrix of given order(Max 10 and Min 5) and arrange the
elements of each row in ascending order using Bubble sort.*/
#include <iostream>
using namespace std;

// Function to perform Bubble Sort on a row
void BubbleSort(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap elements if they are in the wrong order
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

int main() {
    int rows, cols;

    // Input number of rows and columns
    cout << "Enter the number of Rows (Between 5 and 10): ";
    cin >> rows;
    cout << "Enter the number of Columns (Between 5 and 10): ";
    cin >> cols;

    // Validate matrix dimensions
    if (rows < 5 || rows > 10 || cols < 5 || cols > 10) {
        cout << "Invalid matrix size! Please enter dimensions between 5 and 10." << endl;
        return 1;
    }

    int matrix[10][10];

    // Input elements of the matrix
    cout << "Enter the elements of the matrix:" << endl;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cin >> matrix[i][j];
        }
    }

    // Sort each row using Bubble Sort
    for (int i = 0; i < rows; i++) {
        BubbleSort(matrix[i], cols);
    }

    // Display the sorted matrix
    cout << "Matrix after sorting each row in ascending order:" << endl;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
/*================================================================================================================*/
//3. Matrix Row-wise Ascending Order using Selection Sort
#include <iostream>
using namespace std;

void SelectionSort(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        int minIndex = i;
        for (int j = i + 1; j < size; j++) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }
        swap(arr[i], arr[minIndex]);
    }
}

int main() {
    int rows, cols;
    cout << "Enter rows (5-10): ";
    cin >> rows;
    cout << "Enter cols (5-10): ";
    cin >> cols;

    int matrix[10][10];
    cout << "Enter matrix elements:\n";
    for (int i = 0; i < rows; i++)
        for (int j = 0; j < cols; j++)
            cin >> matrix[i][j];

    for (int i = 0; i < rows; i++) {
        SelectionSort(matrix[i], cols);
    }

    cout << "Sorted matrix (row-wise ascending):\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            cout << matrix[i][j] << " ";
        cout << endl;
    }

    return 0;
}
/*================================================================================================================*/
//4. Matrix Column-wise Ascending Order using Insertion Sort
#include <iostream>
using namespace std;

void InsertionSort(int arr[], int size) {
    for (int i = 1; i < size; i++) {
        int key = arr[i], j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
}

int main() {
    int rows, cols;
    cout << "Enter rows (5-10): ";
    cin >> rows;
    cout << "Enter cols (5-10): ";
    cin >> cols;

    int matrix[10][10];
    cout << "Enter matrix elements:\n";
    for (int i = 0; i < rows; i++)
        for (int j = 0; j < cols; j++)
            cin >> matrix[i][j];

    for (int j = 0; j < cols; j++) {
        int col[10];
        for (int i = 0; i < rows; i++)
            col[i] = matrix[i][j];
        InsertionSort(col, rows);
        for (int i = 0; i < rows; i++)
            matrix[i][j] = col[i];
    }

    cout << "Sorted matrix (column-wise ascending):\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            cout << matrix[i][j] << " ";
        cout << endl;
    }

    return 0;
}
/*=================================================================================================================*/
//5. Matrix Column-wise Ascending Order using Bubble Sort
#include <iostream>
using namespace std;

void BubbleSort(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                swap(arr[j], arr[j + 1]);
            }
        }
    }
}

int main() {
    int rows, cols;
    cout << "Enter rows (5-10): ";
    cin >> rows;
    cout << "Enter cols (5-10): ";
    cin >> cols;

    int matrix[10][10];
    cout << "Enter matrix elements:\n";
    for (int i = 0; i < rows; i++)
        for (int j = 0; j < cols; j++)
            cin >> matrix[i][j];

    for (int j = 0; j < cols; j++) {
        int col[10];
        for (int i = 0; i < rows; i++)
            col[i] = matrix[i][j];
        BubbleSort(col, rows);
        for (int i = 0; i < rows; i++)
            matrix[i][j] = col[i];
    }

    cout << "Sorted matrix (column-wise ascending):\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            cout << matrix[i][j] << " ";
        cout << endl;
    }

    return 0;
}
/*==============================================================================================================*/
//6. Matrix Column-wise Ascending Order using Selection Sort
#include <iostream>
using namespace std;

void SelectionSort(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        int minIndex = i;
        for (int j = i + 1; j < size; j++) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }
        swap(arr[i], arr[minIndex]);
    }
}

int main() {
    int rows, cols;
    cout << "Enter rows (5-10): ";
    cin >> rows;
    cout << "Enter cols (5-10): ";
    cin >> cols;

    int matrix[10][10];
    cout << "Enter matrix elements:\n";
    for (int i = 0; i < rows; i++)
        for (int j = 0; j < cols; j++)
            cin >> matrix[i][j];

    for (int j = 0; j < cols; j++) {
        int col[10];
        for (int i = 0; i < rows; i++)
            col[i] = matrix[i][j];
        SelectionSort(col, rows);
        for (int i = 0; i < rows; i++)
            matrix[i][j] = col[i];
    }

    cout << "Sorted matrix (column-wise ascending):\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            cout << matrix[i][j] << " ";
        cout << endl;
    }

    return 0;
}
/*===============================================================================================================*/
//7. Merge Two Arrays into One Sorted Array
#include <iostream>
using namespace std;

void MergeArrays(int arr1[], int size1, int arr2[], int size2, int merged[]) {
    int i = 0, j = 0, k = 0;
    while (i < size1 && j < size2) {
        if (arr1[i] < arr2[j]) {
            merged[k++] = arr1[i++];
        } else {
            merged[k++] = arr2[j++];
        }
    }
    while (i < size1) {
        merged[k++] = arr1[i++];
    }
    while (j < size2) {
        merged[k++] = arr2[j++];
    }
}

int main() {
    int size1, size2;
    cout << "Enter size of first array: ";
    cin >> size1;
    int arr1[size1];
    cout << "Enter elements of first array:\n";
    for (int i = 0; i < size1; i++) cin >> arr1[i];

    cout << "Enter size of second array: ";
    cin >> size2;
    int arr2[size2];
    cout << "Enter elements of second array:\n";
    for (int i = 0; i < size2; i++) cin >> arr2[i];

    int merged[size1 + size2];
    MergeArrays(arr1, size1, arr2, size2, merged);

    cout << "Merged array:\n";
    for (int i = 0; i < size1 + size2; i++) cout << merged[i] << " ";
    return 0;
}
/*==============================================================================================================*/
//8. Array Quick Sort
#include <iostream>
using namespace std;

int Partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = low - 1;
    for (int j = low; j < high; j++) {
        if (arr[j] < pivot) {
            i++;
            swap(arr[i], arr[j]);
        }
    }
    swap(arr[i + 1], arr[high]);
    return i + 1;
}

void QuickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = Partition(arr, low, high);
        QuickSort(arr, low, pi - 1);
        QuickSort(arr, pi + 1, high);
    }
}

int main() {
    int n;
    cout << "Enter number of elements: ";
    cin >> n;

    int arr[n];
    cout << "Enter elements:\n";
    for (int i = 0; i < n; i++) cin >> arr[i];

    QuickSort(arr, 0, n - 1);

    cout << "Sorted array:\n";
    for (int i = 0; i < n; i++) cout << arr[i] << " ";
    return 0;
}
/*===============================================================================================================*/
//9. Array Shell Sort
#include <iostream>
using namespace std;

void ShellSort(int arr[], int size) {
    for (int gap = size / 2; gap > 0; gap /= 2) {
        for (int i = gap; i < size; i++) {
            int temp = arr[i], j;
            for (j = i; j >= gap && arr[j - gap] > temp; j -= gap) {
                arr[j] = arr[j - gap];
            }
            arr[j] = temp;
        }
    }
}

int main() {
    int n;
    cout << "Enter number of elements: ";
    cin >> n;

    int arr[n];
    cout << "Enter elements:\n";
    for (int i = 0; i < n; i++) cin >> arr[i];

    ShellSort(arr, n);

    cout << "Sorted array:\n";
    for (int i = 0; i < n; i++) cout << arr[i] << " ";
    return 0;
}
/*================================================================================================================*/
//10. Singly Linked List Bubble Sort
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

void Append(Node*& head, int value) {
    Node* newNode = new Node{value, nullptr};
    if (!head) {
        head = newNode;
        return;
    }
    Node* temp = head;
    while (temp->next) temp = temp->next;
    temp->next = newNode;
}

void BubbleSort(Node* head) {
    if (!head) return;
    bool swapped;
    Node* ptr1;
    Node* lptr = nullptr;

    do {
        swapped = false;
        ptr1 = head;

        while (ptr1->next != lptr) {
            if (ptr1->data > ptr1->next->data) {
                swap(ptr1->data, ptr1->next->data);
                swapped = true;
            }
            ptr1 = ptr1->next;
        }
        lptr = ptr1;
    } while (swapped);
}

void PrintList(Node* head) {
    while (head) {
        cout << head->data << " ";
        head = head->next;
    }
    cout << endl;
}

int main() {
    Node* head = nullptr;
    int n, value;
    cout << "Enter number of elements: ";
    cin >> n;

    cout << "Enter elements:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        Append(head, value);
    }

    BubbleSort(head);

    cout << "Sorted list:\n";
    PrintList(head);

    return 0;
}
/*==============================================================================================================*/
//11. Breadth-First Search (BFS) on Graph Using Adjacency Matrix
#include <iostream>
#include <queue>
using namespace std;

void BFS(int graph[10][10], int vertices, int start) {
    bool visited[10] = {false};
    queue<int> q;

    q.push(start);
    visited[start] = true;

    cout << "BFS Traversal: ";
    while (!q.empty()) {
        int current = q.front();
        q.pop();
        cout << current << " ";

        for (int i = 0; i < vertices; i++) {
            if (graph[current][i] == 1 && !visited[i]) {
                q.push(i);
                visited[i] = true;
            }
        }
    }
    cout << endl;
}

int main() {
    int vertices;
    cout << "Enter the number of vertices (Max 10): ";
    cin >> vertices;

    int graph[10][10];
    cout << "Enter adjacency matrix:\n";
    for (int i = 0; i < vertices; i++)
        for (int j = 0; j < vertices; j++)
            cin >> graph[i][j];

    int start;
    cout << "Enter the starting vertex: ";
    cin >> start;

    BFS(graph, vertices, start);

    return 0;
}
/*=====================================================================================================================*/
//12. Depth-First Search (DFS) on Graph Using Adjacency List
#include <iostream>
#include <vector>
using namespace std;

void DFSUtil(int v, vector<int> adj[], bool visited[]) {
    visited[v] = true;
    cout << v << " ";

    for (int u : adj[v]) {
        if (!visited[u]) {
            DFSUtil(u, adj, visited);
        }
    }
}

void DFS(int vertices, vector<int> adj[], int start) {
    bool visited[10] = {false};
    cout << "DFS Traversal: ";
    DFSUtil(start, adj, visited);
    cout << endl;
}

int main() {
    int vertices, edges;
    cout << "Enter the number of vertices (Max 10): ";
    cin >> vertices;
    cout << "Enter the number of edges: ";
    cin >> edges;

    vector<int> adj[10];
    cout << "Enter the edges (start end):\n";
    for (int i = 0; i < edges; i++) {
        int u, v;
        cin >> u >> v;
        adj[u].push_back(v);
        adj[v].push_back(u); // For undirected graph
    }

    int start;
    cout << "Enter the starting vertex: ";
    cin >> start;

    DFS(vertices, adj, start);

    return 0;
}
/*=====================================================================================================================*/
//13. Binary Search Tree (BST) with Non-Recursive Pre-Order Traversal
#include <iostream>
#include <stack>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

void PreOrder(Node* root) {
    if (!root) return;

    stack<Node*> s;
    s.push(root);

    cout << "Pre-Order Traversal: ";
    while (!s.empty()) {
        Node* current = s.top();
        s.pop();
        cout << current->data << " ";

        if (current->right) s.push(current->right);
        if (current->left) s.push(current->left);
    }
    cout << endl;
}

int main() {
    Node* root = nullptr;
    int n, value;
    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    PreOrder(root);

    return 0;
}
/*======================================================================================================================*/
//14. Binary Search Tree (BST) with Non-Recursive In-Order Traversal
#include <iostream>
#include <stack>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

void InOrder(Node* root) {
    stack<Node*> s;
    Node* current = root;

    cout << "In-Order Traversal: ";
    while (current || !s.empty()) {
        while (current) {
            s.push(current);
            current = current->left;
        }
        current = s.top();
        s.pop();
        cout << current->data << " ";
        current = current->right;
    }
    cout << endl;
}

int main() {
    Node* root = nullptr;
    int n, value;
    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    InOrder(root);

    return 0;
}
/*===============================================================================================================*/
//15. Binary Search Tree (BST) with Recursive Pre-Order, In-Order, and Post-Order Traversals
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

void PreOrder(Node* root) {
    if (!root) return;
    cout << root->data << " ";
    PreOrder(root->left);
    PreOrder(root->right);
}

void InOrder(Node* root) {
    if (!root) return;
    InOrder(root->left);
    cout << root->data << " ";
    InOrder(root->right);
}

void PostOrder(Node* root) {
    if (!root) return;
    PostOrder(root->left);
    PostOrder(root->right);
    cout << root->data << " ";
}

int main() {
    Node* root = nullptr;
    int n, value;

    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    cout << "Pre-Order Traversal: ";
    PreOrder(root);
    cout << endl;

    cout << "In-Order Traversal: ";
    InOrder(root);
    cout << endl;

    cout << "Post-Order Traversal: ";
    PostOrder(root);
    cout << endl;

    return 0;
}
/*=====================================================================================================================*/
//16. Binary Search Tree (BST) to Count and Display Leaf Nodes
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

int CountLeaves(Node* root) {
    if (!root) return 0;
    if (!root->left && !root->right) return 1;
    return CountLeaves(root->left) + CountLeaves(root->right);
}

void DisplayLeaves(Node* root) {
    if (!root) return;
    if (!root->left && !root->right) {
        cout << root->data << " ";
        return;
    }
    DisplayLeaves(root->left);
    DisplayLeaves(root->right);
}

int main() {
    Node* root = nullptr;
    int n, value;

    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    cout << "Leaf nodes: ";
    DisplayLeaves(root);
    cout << endl;

    cout << "Total leaf nodes: " << CountLeaves(root) << endl;

    return 0;
}
/*====================================================================================================================*/
//17. Binary Search Tree (BST) to Display Nodes with Negative Data
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

void DisplayNegativeNodes(Node* root) {
    if (!root) return;

    if (root->data < 0) cout << root->data << " ";
    DisplayNegativeNodes(root->left);
    DisplayNegativeNodes(root->right);
}

int main() {
    Node* root = nullptr;
    int n, value;

    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    cout << "Nodes with negative data: ";
    DisplayNegativeNodes(root);
    cout << endl;

    return 0;
}
/*====================================================================================================================*/
//18. Binary Search Tree (BST) to Search for a Given Element
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

bool Search(Node* root, int key) {
    if (!root) return false;
    if (root->data == key) return true;

    if (key < root->data) {
        return Search(root->left, key);
    } else {
        return Search(root->right, key);
    }
}

int main() {
    Node* root = nullptr;
    int n, value, key;

    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    cout << "Enter value to search: ";
    cin >> key;

    if (Search(root, key)) {
        cout << "Value found in the tree." << endl;
    } else {
        cout << "Value not found in the tree." << endl;
    }

    return 0;
}
/*=============================================================================================================*/
//19. Binary Search Tree (BST) to Insert a Given Element
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

void InOrder(Node* root) {
    if (!root) return;
    InOrder(root->left);
    cout << root->data << " ";
    InOrder(root->right);
}

int main() {
    Node* root = nullptr;
    int n, value, newElement;

    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    cout << "Enter value to insert: ";
    cin >> newElement;
    root = Insert(root, newElement);

    cout << "In-Order Traversal after insertion: ";
    InOrder(root);
    cout << endl;

    return 0;
}
/*===============================================================================================================*/
//20. Binary Search Tree (BST) to Delete a Specified Node
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* CreateNode(int value) {
    return new Node{value, nullptr, nullptr};
}

Node* Insert(Node* root, int value) {
    if (!root) return CreateNode(value);

    if (value < root->data) {
        root->left = Insert(root->left, value);
    } else {
        root->right = Insert(root->right, value);
    }
    return root;
}

Node* FindMin(Node* root) {
    while (root && root->left) {
        root = root->left;
    }
    return root;
}

Node* Delete(Node* root, int key) {
    if (!root) return nullptr;

    if (key < root->data) {
        root->left = Delete(root->left, key);
    } else if (key > root->data) {
        root->right = Delete(root->right, key);
    } else {
        if (!root->left) {
            Node* temp = root->right;
            delete root;
            return temp;
        } else if (!root->right) {
            Node* temp = root->left;
            delete root;
            return temp;
        }
        Node* temp = FindMin(root->right);
        root->data = temp->data;
        root->right = Delete(root->right, temp->data);
    }
    return root;
}

void InOrder(Node* root) {
    if (!root) return;
    InOrder(root->left);
    cout << root->data << " ";
    InOrder(root->right);
}

int main() {
    Node* root = nullptr;
    int n, value, delElement;

    cout << "Enter number of nodes: ";
    cin >> n;

    cout << "Enter node values:\n";
    for (int i = 0; i < n; i++) {
        cin >> value;
        root = Insert(root, value);
    }

    cout << "Enter value to delete: ";
    cin >> delElement;
    root = Delete(root, delElement);

    cout << "In-Order Traversal after deletion: ";
    InOrder(root);
    cout << endl;

    return 0;
}
/*=================================================================================================================*/
//21. Hash Table Using Division Method with Linear Probing Without Replacement
#include <iostream>
using namespace std;

#define SIZE 10

int hashTable[SIZE];

void Insert(int key) {
    int index = key % SIZE;
    while (hashTable[index] != -1) {
        index = (index + 1) % SIZE; // Linear probing
    }
    hashTable[index] = key;
}

void Display() {
    cout << "Hash Table:\n";
    for (int i = 0; i < SIZE; i++) {
        if (hashTable[i] != -1) {
            cout << i << " --> " << hashTable[i] << endl;
        } else {
            cout << i << " --> Empty\n";
        }
    }
}

int main() {
    fill(hashTable, hashTable + SIZE, -1);

    int n, key;
    cout << "Enter number of keys (Max 10): ";
    cin >> n;

    cout << "Enter keys:\n";
    for (int i = 0; i < n; i++) {
        cin >> key;
        Insert(key);
    }

    Display();

    return 0;
}
/*=============================================================================================================*/
//22. Hash Table Using Division Method Without Chaining
#include <iostream>
using namespace std;

#define SIZE 10

int hashTable[SIZE];

void Insert(int key) {
    int index = key % SIZE;
    if (hashTable[index] == -1) {
        hashTable[index] = key;
    } else {
        cout << "Collision occurred for key " << key << ", unable to insert.\n";
    }
}

void Display() {
    cout << "Hash Table:\n";
    for (int i = 0; i < SIZE; i++) {
        if (hashTable[i] != -1) {
            cout << i << " --> " << hashTable[i] << endl;
        } else {
            cout << i << " --> Empty\n";
        }
    }
}

int main() {
    fill(hashTable, hashTable + SIZE, -1);

    int n, key;
    cout << "Enter number of keys (Max 10): ";
    cin >> n;

    cout << "Enter keys:\n";
    for (int i = 0; i < n; i++) {
        cin >> key;
        Insert(key);
    }

    Display();

    return 0;
}
/*================================================================================================================*/
//23. Hash Table Using Division Method with Linear Probing with Replacement
#include <iostream>
using namespace std;

#define SIZE 10

int hashTable[SIZE];

void Insert(int key) {
    int index = key % SIZE;

    if (hashTable[index] == -1 || hashTable[index] % SIZE == index) {
        while (hashTable[index] != -1) {
            index = (index + 1) % SIZE;
        }
        hashTable[index] = key;
    } else {
        int temp = hashTable[index];
        hashTable[index] = key;
        key = temp;

        while (hashTable[index] != -1) {
            index = (index + 1) % SIZE;
        }
        hashTable[index] = key;
    }
}

void Display() {
    cout << "Hash Table:\n";
    for (int i = 0; i < SIZE; i++) {
        if (hashTable[i] != -1) {
            cout << i << " --> " << hashTable[i] << endl;
        } else {
            cout << i << " --> Empty\n";
        }
    }
}

int main() {
    fill(hashTable, hashTable + SIZE, -1);

    int n, key;
    cout << "Enter number of keys (Max 10): ";
    cin >> n;

    cout << "Enter keys:\n";
    for (int i = 0; i < n; i++) {
        cin >> key;
        Insert(key);
    }

    Display();

    return 0;
}
/*=================================================================================================================*/
//24. Sequential File to Store Student Record and Implement Search
#include <iostream>
#include <fstream>
using namespace std;

struct Student {
    int rollNo;
    char name[50];
    float marks;
};

void AddRecord() {
    ofstream file("students.dat", ios::binary | ios::app);
    Student s;
    cout << "Enter Roll No, Name, and Marks: ";
    cin >> s.rollNo >> s.name >> s.marks;
    file.write((char*)&s, sizeof(s));
    file.close();
}

void SearchRecord(int rollNo) {
    ifstream file("students.dat", ios::binary);
    Student s;
    bool found = false;

    while (file.read((char*)&s, sizeof(s))) {
        if (s.rollNo == rollNo) {
            cout << "Record Found: " << endl;
            cout << "Roll No: " << s.rollNo << ", Name: " << s.name << ", Marks: " << s.marks << endl;
            found = true;
            break;
        }
    }

    if (!found) {
        cout << "Record not found.\n";
    }

    file.close();
}

int main() {
    int choice, rollNo;

    do {
        cout << "\n1. Add Record\n2. Search Record\n3. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            AddRecord();
            break;
        case 2:
            cout << "Enter Roll No to search: ";
            cin >> rollNo;
            SearchRecord(rollNo);
            break;
        case 3:
            cout << "Exiting...\n";
            break;
        default:
            cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
/*==============================================================================================================*/
//25. Sequential File to Store Employee Record and Implement Search
#include <iostream>
#include <fstream>
using namespace std;

struct Employee {
    int empNo;
    char name[50];
    float salary;
};

void AddRecord() {
    ofstream file("employees.dat", ios::binary | ios::app);
    Employee e;
    cout << "Enter Emp No, Name, and Salary: ";
    cin >> e.empNo >> e.name >> e.salary;
    file.write((char*)&e, sizeof(e));
    file.close();
}

void SearchRecord(int empNo) {
    ifstream file("employees.dat", ios::binary);
    Employee e;
    bool found = false;

    while (file.read((char*)&e, sizeof(e))) {
        if (e.empNo == empNo) {
            cout << "Record Found: " << endl;
            cout << "Emp No: " << e.empNo << ", Name: " << e.name << ", Salary: " << e.salary << endl;
            found = true;
            break;
        }
    }

    if (!found) {
        cout << "Record not found.\n";
    }

    file.close();
}

int main() {
    int choice, empNo;

    do {
        cout << "\n1. Add Record\n2. Search Record\n3. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            AddRecord();
            break;
        case 2:
            cout << "Enter Emp No to search: ";
            cin >> empNo;
            SearchRecord(empNo);
            break;
        case 3:
            cout << "Exiting...\n";
            break;
        default:
            cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
/*============================================================================================================*/
//26. Sequential File to Store Items Record and List Items with Price Less Than 100
#include <iostream>
#include <fstream>
using namespace std;

struct Item {
    int itemNo;
    char name[50];
    float price;
};

void AddItem() {
    ofstream file("items.dat", ios::binary | ios::app);
    Item i;
    cout << "Enter Item No, Name, and Price: ";
    cin >> i.itemNo >> i.name >> i.price;
    file.write((char*)&i, sizeof(i));
    file.close();
}

void ListItemsLessThan100() {
    ifstream file("items.dat", ios::binary);
    Item i;
    bool found = false;

    while (file.read((char*)&i, sizeof(i))) {
        if (i.price < 100.0) {
            cout << "Item No: " << i.itemNo << ", Name: " << i.name << ", Price: " << i.price << endl;
            found = true;
        }
    }

    if (!found) {
        cout << "No items found with price less than 100.\n";
    }

    file.close();
}

int main() {
    int choice;

    do {
        cout << "\n1. Add Item\n2. List Items with Price < 100\n3. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            AddItem();
            break;
        case 2:
            ListItemsLessThan100();
            break;
        case 3:
            cout << "Exiting...\n";
            break;
        default:
            cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
/*===============================================================================================================*/
//27. Sequential File to Store Bank Account Record and Implement Delete Function
#include <iostream>
#include <fstream>
using namespace std;

struct BankAccount {
    int accNo;
    char name[50];
    float balance;
};

void AddAccount() {
    ofstream file("bankaccounts.dat", ios::binary | ios::app);
    BankAccount acc;
    cout << "Enter Account No, Name, and Balance: ";
    cin >> acc.accNo >> acc.name >> acc.balance;
    file.write((char*)&acc, sizeof(acc));
    file.close();
}

void DeleteAccount(int accNo) {
    ifstream inFile("bankaccounts.dat", ios::binary);
    ofstream outFile("temp.dat", ios::binary);

    BankAccount acc;
    bool found = false;

    while (inFile.read((char*)&acc, sizeof(acc))) {
        if (acc.accNo == accNo) {
            found = true;
            cout << "Account with Account No " << accNo << " deleted.\n";
        } else {
            outFile.write((char*)&acc, sizeof(acc));
        }
    }

    inFile.close();
    outFile.close();

    if (!found) {
        cout << "Account not found.\n";
    } else {
        remove("bankaccounts.dat");
        rename("temp.dat", "bankaccounts.dat");
    }
}

int main() {
    int choice, accNo;

    do {
        cout << "\n1. Add Account\n2. Delete Account\n3. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            AddAccount();
            break;
        case 2:
            cout << "Enter Account No to delete: ";
            cin >> accNo;
            DeleteAccount(accNo);
            break;
        case 3:
            cout << "Exiting...\n";
            break;
        default:
            cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
/*=================================================================================================================*/
//28. Sequential File to Store Customer Record and Calculate Total Due Amount
#include <iostream>
#include <fstream>
using namespace std;

struct Customer {
    int custID;
    char name[50];
    float dueAmount;
};

void AddCustomer() {
    ofstream file("customers.dat", ios::binary | ios::app);
    Customer c;
    cout << "Enter Customer ID, Name, and Due Amount: ";
    cin >> c.custID >> c.name >> c.dueAmount;
    file.write((char*)&c, sizeof(c));
    file.close();
}

void CalculateTotalDue() {
    ifstream file("customers.dat", ios::binary);
    Customer c;
    float totalDue = 0;

    while (file.read((char*)&c, sizeof(c))) {
        totalDue += c.dueAmount;
    }

    cout << "Total Due Amount: " << totalDue << endl;
    file.close();
}

int main() {
    int choice;

    do {
        cout << "\n1. Add Customer\n2. Calculate Total Due Amount\n3. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            AddCustomer();
            break;
        case 2:
            CalculateTotalDue();
            break;
        case 3:
            cout << "Exiting...\n";
            break;
        default:
            cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
/*==================================================================================================================*/
//29. Indexed File to Store Student Record and Implement Search
#include <iostream>
#include <fstream>
#include <map>
using namespace std;

struct Student {
    int rollNo;
    char name[50];
    float marks;
};

void AddRecord() {
    ofstream file("students.dat", ios::binary | ios::app);
    Student s;
    cout << "Enter Roll No, Name, and Marks: ";
    cin >> s.rollNo >> s.name >> s.marks;
    file.write((char*)&s, sizeof(s));
    file.close();
}

void IndexFile(map<int, streampos>& indexMap) {
    ifstream file("students.dat", ios::binary);
    Student s;
    streampos pos;

    while (file.read((char*)&s, sizeof(s))) {
        pos = file.tellg();
        indexMap[s.rollNo] = pos;
    }

    file.close();
}

void SearchRecord(int rollNo, map<int, streampos>& indexMap) {
    ifstream file("students.dat", ios::binary);
    Student s;

    if (indexMap.find(rollNo) != indexMap.end()) {
        file.seekg(indexMap[rollNo]);
        file.read((char*)&s, sizeof(s));
        cout << "Record Found: " << endl;
        cout << "Roll No: " << s.rollNo << ", Name: " << s.name << ", Marks: " << s.marks << endl;
    } else {
        cout << "Record not found.\n";
    }

    file.close();
}

int main() {
    int choice, rollNo;
    map<int, streampos> indexMap;

    do {
        cout << "\n1. Add Record\n2. Search Record\n3. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            AddRecord();
            break;
        case 2:
            IndexFile(indexMap);
            cout << "Enter Roll No to search: ";
            cin >> rollNo;
            SearchRecord(rollNo, indexMap);
            break;
        case 3:
            cout << "Exiting...\n";
            break;
        default:
            cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
/*===============================================================================================================*/
//30. Indexed File to Store Item Record and List Items with Price Less Than 100
#include <iostream>
#include <fstream>
#include <map>
using namespace std;

struct Item {
    int itemNo;
    char name[50];
    float price;
};

void AddItem() {
    ofstream file("items.dat", ios::binary | ios::app);
    Item i;
    cout << "Enter Item No, Name, and Price: ";
    cin >> i.itemNo >> i.name >> i.price;
    file.write((char*)&i, sizeof(i));
    file.close();
}

void IndexFile(map<int, streampos>& indexMap) {
    ifstream file("items.dat", ios::binary);
    Item i;
    streampos pos;

    while (file.read((char*)&i, sizeof(i))) {
        pos = file.tellg();
        indexMap[i.itemNo] = pos;
    }

    file.close();
}

void ListItemsLessThan100(map<int, streampos>& indexMap) {
    ifstream file("items.dat", ios::binary);
    Item i;

    for (auto& entry : indexMap) {
        file.seekg(entry.second);
        file.read((char*)&i, sizeof(i));
        if (i.price < 100.0) {
            cout << "Item No: " << i.itemNo << ", Name: " << i.name << ", Price: " << i.price << endl;
        }
    }

    file.close();
}

int main() {
    int choice;
    map<int, streampos> indexMap;

    do {
        cout << "\n1. Add Item\n2. List Items with Price < 100\n3. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            AddItem();
            break;
        case 2:
            IndexFile(indexMap);
            ListItemsLessThan100(indexMap);
            break;
        case 3:
            cout << "Exiting...\n";
            break;
        default:
            cout << "Invalid choice. Try again.\n";
        }
    } while (choice != 3);

    return 0;
}
/*================================================================================================================*/
