# Real JQueary Calls for Doc Ready.


# $(document).ready(ready)

ready = ->
  $('.table').html printHTML board
  $('body').keyup (e) ->
    keyDirection e
    # console.log checkBoardZero board
    if checkBoardZero board
      insertNew board
      $('.table').html printHTML board
    else
      alert 'Sorry you lost, start new game, on the house'
      # board = resetBoard board
      window.location.reload()
      # console.log board
      # $('.table').html printHTML board

$(document).on('turbolinks:load', ready)

array = [2,2,0,2]
board = [[0,0,0,0],[0,0,2,0],[0,0,0,0],[0,0,0,0]]
newBoard = [[2,2,8,0],[2,2,2,2],[2,2,0,2],[2,2,0,2]]
arrayToTranspose = [[5,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
# board = [[2,4,0,0],[2,0,0,0],[0,0,0,0],[0,0,0,0]]

# Console Log Doc Ready
$ ->
  # console.log "ready"
  # console.log(Math.floor(Math.random() * 6) + 1  )
  # console.log(sumPadArray(array))
  # console.log combineArrays(arrayOfArrays)
  # console.log combineArraysBackwards(arrayOfArrays)
  # console.log downKey(arrayTransSumTrans)

# ----------------THIS IS THE REST OF THE SHIT!---------------------
insertNew = (board) ->
  board = board
  i = 0
  while i < 1
    x =  Math.floor(Math.random() * 4)
    y =  Math.floor(Math.random() * 4)
    if board[x][y] == 0
      board[x][y] = 2
      i = 1

resetBoard = (board) ->
  board = [[0,0,0,0],[0,0,2,0],[0,0,0,0],[0,0,0,0]]

checkBoardZero = (board) ->
  j = 0
  while j < 4
    returnedZero = board[j].find checkArrayZero
    if returnedZero == 0
      j = 4
    j++
  console.log returnedZero
  returnedZero == 0

checkArrayZero = (num) ->
  num == 0

printHTML = (board) ->
  htmlString = '<tr class="row" id="row1"><td class="box" id="box1">' + board[0][0] + '</td><td class="box" id="box1">' + board[0][1] + '</td><td class="box" id="box1">' + board[0][2] + '</td><td class="box" id="box1">' + board[0][3] + '</td></tr><tr class="row" id="row2"><td class="box" id="box1">' + board[1][0] + '</td><td class="box" id="box1">' + board[1][1] + '</td><td class="box" id="box1">' + board[1][2] + '</td><td class="box" id="box1">' + board[1][3] + '</td></tr><tr class="row" id="row3"><td class="box" id="box1">' + board[2][0] + '</td><td class="box" id="box1">' + board[2][1] + '</td><td class="box" id="box1">' + board[2][2] + '</td><td class="box" id="box1">' + board[2][3] + '</td></tr><tr class="row" id="row4"><td class="box" id="box1">' + board[3][0] + '</td><td class="box" id="box1">' + board[3][1] + '</td><td class="box" id="box1">' + board[3][2] + '</td><td class="box" id="box1">' + board[3][3] + '</td></tr>'
  htmlString

keyDirection = (e) ->
  if e.keyCode == 37 #left (normal)
    board = combineArrays(board)
  else if e.keyCode == 39 #right (backwards)
    board = combineArraysBackwards(board)
  else if e.keyCode == 38 #up (normal)
    board = upKey(board)
  else if e.keyCode == 40 #down (backwards)
    board = downKey(board)
  return

upKey = (arrayOfArrays) ->
  newArray = combineArrays(transposeArrays(arrayOfArrays))
  newArray = transposeArrays(newArray)
  newArray

downKey = (arrayOfArrays) ->
  newArray = combineArraysBackwards(transposeArrays(arrayOfArrays))
  newArray = transposeArrays(newArray)
  newArray

transposeArrays = (arrayOfArrays) ->
  newArray = [[],[],[],[]]
  i = 0
  while i < 4
    j = 0
    while j < 4
      newArray[j].push arrayOfArrays[i][j]
      j++
    i++
  newArray

combineArraysBackwards = (arrayOfArrays) ->
  arrayOfArrays = combineArrays(reverseArrays(arrayOfArrays))
  reverseArrays arrayOfArrays
  arrayOfArrays

reverseArrays = (arrayOfArrays) ->
  i = 0
  while i < arrayOfArrays.length
    arrayOfArrays[i].reverse()
    i++
  arrayOfArrays

combineArrays = (arrayOfArrays) ->
  newArrayOfArrays = []
  i = 0
  while i < arrayOfArrays.length
    newArrayOfArrays = newArrayOfArrays.concat([ sumPadArray(arrayOfArrays[i]) ])
    i++
  newArrayOfArrays

sumPadArray = (array) ->
  aNoZeros = removeZeros(array)
  aCombined = combineConsecutive(aNoZeros)
  aFinal = addZeros(aCombined)
  aFinal

removeZeros = (array) ->
  newArray = []
  i = 0
  while i < array.length
    if array[i] != 0
      newArray.push array[i]
    i++
  newArray

combineConsecutive = (array) ->
  newArray = []
  i = 0
  while i < array.length
    if array[i] == array[i + 1]
      newArray.push array[i] + array[i + 1]
      array.splice i + 1, 1
    else
      newArray.push array[i]
    i++
  newArray

addZeros = (newArray) ->
  while newArray.length < 4
    newArray.push 0
  newArray
