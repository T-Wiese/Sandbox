import Foundation

class Node {

  var value: Int
  var left: Node?
  var right: Node?

  init(_ val: Int) {
    value = val
  }

  init(_ val: Int, l: Node?, r: Node?) {
    value = val
    left = l
    right = r
  }
}

let array = [1, 2, 4, 5, 10, 34, 45, 69]

func ArrayBinaryTree(_ array:[Int]) -> Node {

  if (array.count == 2) {
    var l = Node(array[0])
    var root = Node(array[1], l: l, r: nil)
    return root
  }

  if (array.count == 1) {
    return Node(array[0])
  }

  let median = array.count / 2

  var root = Node(array[median])
  
  root.left = ArrayBinaryTree(Array(array[0...median - 1])) 
  root.right = ArrayBinaryTree(Array(array[median + 1...array.count - 1]))
  
  return root
}

func printTree(_ root: Node) {
  print(root.value)
  if let left = root.left {
    print("LT")
    printTree(left)
  }
  if let right = root.right {
    print("RT")
    printTree(right)
  }
}

let root = ArrayBinaryTree(array)

printTree(root)
//printTree(a)

