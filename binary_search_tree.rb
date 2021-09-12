class BST
    attr_accessor :data, :left, :right

    def initialize(data)
        self.data = data
    end

    def insert(data)
        if data <= self.data
            if self.left.nil?
                self.left = BST.new(data)
            else
                self.left.insert(data)
            end
        else
            if self.right.nil?
                self.right = BST.new(data)
            else
                self.right.insert(data)
            end
        end
    end

    def each(&block)
        left.each(&block) if left
        block.call(data)
        right.each(&block) if right
    end

    # def in_order(node=@root, &block)
    #     return if node.nil?
    #     in_order(node.left, &block)
    #     yield node
    #     in_order(node.right, &block)
    # end
    
    # def pre_order(node=@root, &block)
    #     return if node.nil?
    #     yield node
    #     in_order(node.left, &block)
    #     in_order(node.right, &block)
    # end

    # def post_order(node=@root, &block)
    #     return if node.nil?
    #     in_order(node.left, &block)
    #     in_order(node.right, &block)
    #     yield node
    # end

    # def search(data, node=@root)
    #     return nil if node.nil?
    #     if data < node.data
    #         search(data, node.left)
    #     elsif data > node.data
    #         search(data, node.right)
    #     else
    #         return node
    #     end
    # end

    # def check_height(node)
    #     return 0 if node.nil?

    #     leftHeight = check_height(node.left)
    #     return -1 if leftHeight == -1

    #     rightHeight = check_height(node.right)
    #     return -1 if rightHeight == -1

    #     diff = leftHeight - rightHeight
    #     if diff.abs > 1
    #         -1
    #     else
    #         [leftHeight, rightHeight].max + 1
    #     end
    # end

    # def is_balanced?(node=@root)
    #     check_height(node) == -1 ? false : true
    # end
end

# tree = BST.new
# tree.insert(50)
# tree.insert(25)
# tree.insert(75)
# tree.insert(12)
# tree.insert(37)
# tree.insert(87)
# tree.insert(63)
# puts tree.inspect
# puts "tree.is_balanced?"
# puts tree.is_balanced?

# puts "pre_order"
# tree.pre_order do |node|
#   puts node.data
# end

# puts "in_order"
# tree.in_order do |node|
#   puts node.data
# end

# puts "post_order"
# tree.post_order do |node|
#   puts node.data
# end