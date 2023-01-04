package com.game.core

import com.game.misc.SaveData

class GameInfo {
    companion object Info {
        fun saveGame() {
            val data: SaveData = SaveData()
            //println(JSON.stringify(data))
        }
    }
}