# Swift Algorithms and Data Structures

This repository contains Swift based examples of many 
popular algorithms and data structures, and this repository is inspired by [JavaScript-Algorithms](https://github.com/trekhleb/javascript-algorithms)

This repository is still working in progress.

Each algorithm and data structure have its own separate README 
with related explanations and links for further reading and YouTube
videos.

## Data Structures

Data structure is a particular way of organizing and storing data in a computer so that it can 
be accessed and modified efficiently. More precisely, a data structure is a collection of data 
values, the relationships among them, and the functions or operations that can be applied to 
the data.

* Linked List
* Queue
* Stack
* Hash Table
* Heap
* Priority Queue
* Trie
* Tree
* Binary Search Tree
* AVL Tree
* Red-Black Tree
* Suffix Tree
* Segment Tree or Interval Tree
* Binary Indexed Tree or Fenwick Tree
* Graph
* Disjoint Set

## Useful Information

### References

▶ Data Structures and Algorithms on YouTube](https://www.youtube.com/playlist?list=PLLXdhg_r2hKA7DPDsunoDZ-Z769jWn4R8)

### Big O Notation

Order of growth of algorithms specified in Big O notation.

![Big O graphs](https://github.com/trekhleb/javascript-algorithms/blob/master/assets/big-o-graph.png?raw=true)

Source: [Big O Cheat Sheet](http://bigocheatsheet.com/).

Below is the list of some of the most used Big O notations and their performance comparisons against different sizes of the input data.

| Big O Notation | Computations for 10 elements | Computations for 100 elements | Computations for 1000 elements  |
| -------------- | ---------------------------- | ----------------------------- | ------------------------------- |
| **O(1)**       | 1                            | 1                             | 1                               |
| **O(log N)**   | 3                            | 6                             | 9                               |
| **O(N)**       | 10                           | 100                           | 1000                            |
| **O(N log N)** | 30                           | 600                           | 9000                            |
| **O(N^2)**     | 100                          | 10000                         | 1000000                         |
| **O(2^N)**     | 1024                         | 1.26e+29                      | 1.07e+301                       |
| **O(N!)**      | 3628800                      | 9.3e+157                      | 4.02e+2567                      |

### Data Structure Operations Complexity

| Data Structure          | Access    | Search    | Insertion | Deletion  | Comments  |
| ----------------------- | :-------: | :-------: | :-------: | :-------: | :-------- | 
| **Array**               | 1         | n         | n         | n         |           |
| **Stack**               | n         | n         | 1         | 1         |           |
| **Queue**               | n         | n         | 1         | 1         |           | 
| **Linked List**         | n         | n         | 1         | 1         |           |
| **Hash Table**          | -         | n         | n         | n         | In case of perfect hash function costs would be O(1) |
| **Binary Search Tree**  | n         | n         | n         | n         | In case of balanced tree costs would be O(log(n)) |
| **B-Tree**              | log(n)    | log(n)    | log(n)    | log(n)    |           |
| **Red-Black Tree**      | log(n)    | log(n)    | log(n)    | log(n)    |           |
| **AVL Tree**            | log(n)    | log(n)    | log(n)    | log(n)    |           |

### Array Sorting Algorithms Complexity

| Name                  | Best      | Average   | Worst         | Memory    | Stable    | Comments  |
| --------------------- | :-------: | :-------: | :-----------: | :-------: | :-------: | :-------- |
| **Bubble sort**       | n         | n^2       | n^2           | 1         | Yes       |           |
| **Insertion sort**    | n         | n^2       | n^2           | 1         | Yes       |           |
| **Selection sort**    | n^2       | n^2       | n^2           | 1         | No        |           |
| **Heap sort**         | n log(n)  | n log(n)  | n log(n)      | 1         | No        |           |
| **Merge sort**        | n log(n)  | n log(n)  | n log(n)      | n         | Yes       |           |
| **Quick sort**        | n log(n)  | n log(n)  | n^2           | log(n)    | No        |           |
| **Shell sort**        | n log(n)  | depends on gap sequence   | n (log(n))^2  | 1         | No        |           |
| **Counting sort**     | n + r     | n + r     | n + r         | n + r     | Yes       | r - biggest number in array |
| **Radix sort**        | n * k     | n * k     | n * k         | n + k    | Yes        | k - length of longest key |
