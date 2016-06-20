//args.map( a => println(a)
//val board = List('_', '_', '_', 'o', 'x', 'o', 'o', 'x', 'o')
// val board = args

val x = 'x'
val o = 'o'
val empty = '_'

class Board(val size: Int)
{

  private def collectRow(list: List[Char]): List[Char] =
    list.take(size).distinct

  private def collectColumn(list: List[Char]): List[Char] =
    list.zipWithIndex.collect { case e: (Char, Int) if (e._2 % size == 0) => e._1 } distinct

  private def checkDiagonals(list: List[Char]): Option[Char] = {
    val limit = size * size
    val dNE = (1 to limit by (size+1)).map(n => list(n - 1)).distinct
    val dNW = (size to limit by (size-1)).map(n => list(n - 1)).distinct
    filterWinner(dNE.toList, dNW.toList)
  }

  private def filterWinner(l1: List[Char], l2: List[Char]): Option[Char] =
    (l1.length, l2.length) match {
      case (1, _) => l1.headOption
      case (_, 1) => l2.headOption
      case _ => None
    }

  def check1(board: List[Char]): Option[Char] = {
    val row = collectRow(board)
    val column = collectColumn(board)
    filterWinner(row, column)
  }

  def check5(board: List[Char]): Option[Char]= {
    val row: List[Char] = collectRow(board.drop(size))
    val column: List[Char] = collectColumn(board.drop(1))
    filterWinner(row, column)
  }

  def check9(board: List[Char]): Option[Char] = {
    val row: List[Char] = collectRow(board.drop(size * 2))
    val column: List[Char] = collectColumn(board.drop(2))
    filterWinner(row, column)
  }

  def findWinner(board: List[Char]): Option[Char] = {
    List(check1(board), check5(board), check9(board), checkDiagonals(board)).filter(_.isDefined).map(_.get).headOption
  }

}

val b = new Board(3)
val input = args.map(_.head).toList
println(input)
println(b.findWinner(input))
