# Note: $ means that the variable is a global variable
$nestDepth = 0

def tab depth
  ret = ''
  
  depth.times do
    ret = ret + '    '
  end
  
  retcd
end

def log blockDescript, &block
  tabs = tab $nestDepth
  $nestDepth = $nestDepth + 1
  puts tabs + 'Beginning ' + blockDescript + '...'
  ret = block.call
  puts tabs + '... Finished ' + blockDescript + ", returned: " + ret.inspect
  $nestDepth = $nestDepth - 1
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end
  
  log 'yet another block' do
    'I like Indian food!'
  end

  true
end