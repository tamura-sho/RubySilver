module M
  def hoge
    p "Mだよ"
  end
end

class Parent
  def hoge
    p "親だよ"
  end
end

class Child < Parent
  include M
end

child = Child.new
child.hoge # => "Mだよ"が表示されます

# クラスChildの継承チェーンをみてみましょう
Child.ancestors
# => [Child, M, Parent, Object, Kernel, BasicObject]
