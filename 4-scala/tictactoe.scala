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

  private def checkRowsAndCols(list: List[Char]): Option[Char] = {
    val r1 = 1 to (size*size) by size
    val r2 = 0 to size
    r1.zip(r2).map((coords) => {
      val row = collectRow(list.drop(coords._1 - 1))
      val column = collectColumn(list.drop(coords._2 - 1))
      filterWinner(row, column)
    }).find(_.isDefined).map(_.get)
  }

  private def filterWinner(l1: List[Char], l2: List[Char]): Option[Char] =
    (l1.length, l2.length) match {
      case (1, _) =>
        if (l1.head == empty) None
        else l1.headOption
      case (_, 1) =>
        if (l2.head == empty) None
        else l2.headOption
      case _ => None
    }

  def findWinner(board: List[Char]): Option[Char] = {
    List(checkRowsAndCols(board), checkDiagonals(board))
      .filter(_.isDefined)
      .map(_.get)
      .headOption
  }

}

val board = new Board(3)
val input = args.map(_.head).toList

println(input)
println(board.findWinner(input))
