/*
 
 
                                                    *  *              *  *              *  *
                                                 *        *        *        *        *        *
                                                 *   1️⃣ - * ------ * → 2️⃣   *        *   3️⃣   *
                                                 *   |  ⟍ *        *        *        *        *
                                                    *| *  ⟍           *  *              *  *
                                                     ⏐      ⟍
                                                     ⏐         ⟍
                                                     |           ⟍
                                                    *| *            ⟍  *  *              *  *
                                                 *   ↓    *         * ↘︎      *        *        *
                                                 *   4️⃣   *         *   5️⃣   *        *   6️⃣   *
                                                 *        *         *        *        *        *
                                                    *  *               *  *              *  *
                                     
                                     
                                     
                                                    *  *               *  *              *  *
                                                 *        *         *        *        *        *
                                                 *   7️⃣   *         *   8️⃣   *        *   9️⃣   *
                                                 *        *         *        *        *        *
                                                    *  *               *  *              *  *
 
 
 */
func countPatterns(from firstDot: Dot, length: Int) -> Int {
  // Dot values are .a through .i, with raw values as Ints from 0 - 8
  // Do something!
    if length > Dot.maxPathLength {
        return 0
    }
  return 0
}

enum Dot: Int, CaseIterable {
    case a=0, b, c, d, e, f, g, h, i
    
    static var maxPathLength: Int {
        self.allCases.count
    }
}


