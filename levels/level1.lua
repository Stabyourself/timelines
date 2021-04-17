return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.5.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 1020,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 9,
  nextobjectid = 124,
  backgroundcolor = { 72, 72, 252 },
  properties = {},
  tilesets = {
    {
      name = "markers",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 10,
      image = "../img/markers.png",
      imagewidth = 180,
      imageheight = 18,
      transparentcolor = "#000000",
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 10,
      tiles = {
        {
          id = 0,
          type = "start",
          properties = {
            ["type"] = "start"
          }
        },
        {
          id = 1,
          type = "key",
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 2,
          type = "door",
          properties = {
            ["meta"] = false,
            ["triggered"] = false
          }
        },
        {
          id = 3,
          type = "shrine"
        },
        {
          id = 4,
          type = "arrow-shooter",
          properties = {
            ["dir"] = "",
            ["spawnTime"] = 2
          }
        },
        {
          id = 5,
          type = "box",
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 6,
          type = "moving-platform",
          properties = {
            ["differenceX"] = 0,
            ["differenceY"] = 0,
            ["travelTime"] = 2,
            ["waitTime"] = 0
          }
        },
        {
          id = 7,
          type = "sand-upgrade"
        },
        {
          id = 8,
          type = "trigger",
          properties = {
            ["target"] = { id = 0 }
          }
        },
        {
          id = 9,
          type = "boss"
        }
      }
    },
    {
      name = "tiles",
      firstgid = 11,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 9,
      image = "../img/tiles.png",
      imagewidth = 162,
      imageheight = 288,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {
        {
          name = "wall",
          tile = 27,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "ground",
              probability = 1,
              tile = 27,
              properties = {}
            },
            {
              color = { 0, 0, 255 },
              name = "tree",
              probability = 1,
              tile = 108,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 0, 1, 0, 0, 0 },
              tileid = 0
            },
            {
              wangid = { 0, 0, 1, 1, 1, 0, 0, 0 },
              tileid = 1
            },
            {
              wangid = { 0, 0, 1, 1, 1, 1, 1, 0 },
              tileid = 2
            },
            {
              wangid = { 0, 0, 0, 0, 1, 1, 1, 0 },
              tileid = 3
            },
            {
              wangid = { 1, 0, 1, 1, 1, 1, 1, 0 },
              tileid = 4
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 1, 1 },
              tileid = 5
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 1, 1 },
              tileid = 6
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 1, 0 },
              tileid = 7
            },
            {
              wangid = { 1, 0, 1, 0, 1, 1, 1, 0 },
              tileid = 8
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 0, 0 },
              tileid = 9
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 0, 0 },
              tileid = 10
            },
            {
              wangid = { 1, 1, 1, 1, 1, 1, 1, 1 },
              tileid = 11
            },
            {
              wangid = { 1, 0, 0, 0, 1, 1, 1, 1 },
              tileid = 12
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 1, 0 },
              tileid = 13
            },
            {
              wangid = { 1, 0, 1, 0, 1, 1, 1, 1 },
              tileid = 14
            },
            {
              wangid = { 1, 1, 1, 0, 1, 1, 1, 0 },
              tileid = 15
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 1, 0 },
              tileid = 16
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 1, 1 },
              tileid = 17
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 0, 0 },
              tileid = 18
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 0, 0 },
              tileid = 19
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 1, 1 },
              tileid = 20
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 1, 1 },
              tileid = 21
            },
            {
              wangid = { 1, 1, 1, 1, 1, 1, 1, 0 },
              tileid = 23
            },
            {
              wangid = { 1, 0, 1, 1, 1, 1, 1, 1 },
              tileid = 24
            },
            {
              wangid = { 0, 0, 1, 0, 1, 0, 0, 0 },
              tileid = 25
            },
            {
              wangid = { 0, 0, 0, 0, 1, 0, 1, 0 },
              tileid = 26
            },
            {
              wangid = { 0, 0, 1, 0, 0, 0, 0, 0 },
              tileid = 28
            },
            {
              wangid = { 0, 0, 1, 0, 0, 0, 1, 0 },
              tileid = 29
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 1, 0 },
              tileid = 30
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 1, 0 },
              tileid = 31
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 1, 1 },
              tileid = 32
            },
            {
              wangid = { 1, 1, 1, 0, 1, 1, 1, 1 },
              tileid = 33
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 0, 0 },
              tileid = 34
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 1, 0 },
              tileid = 35
            },
            {
              wangid = { 0, 0, 1, 1, 1, 0, 1, 0 },
              tileid = 36
            },
            {
              wangid = { 0, 0, 1, 0, 1, 1, 1, 0 },
              tileid = 37
            },
            {
              wangid = { 0, 0, 1, 0, 1, 0, 1, 0 },
              tileid = 38
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 0, 0 },
              tileid = 39
            },
            {
              wangid = { 1, 0, 0, 0, 1, 1, 1, 0 },
              tileid = 40
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 0, 0 },
              tileid = 41
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 1, 1 },
              tileid = 42
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 0, 0 },
              tileid = 43
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 1, 0 },
              tileid = 44
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 1, 0 },
              tileid = 45
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 1, 1 },
              tileid = 46
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 1, 0 },
              tileid = 47
            },
            {
              wangid = { 0, 0, 0, 0, 2, 0, 0, 0 },
              tileid = 81
            },
            {
              wangid = { 0, 0, 2, 2, 2, 0, 0, 0 },
              tileid = 82
            },
            {
              wangid = { 0, 0, 2, 2, 2, 2, 2, 0 },
              tileid = 83
            },
            {
              wangid = { 0, 0, 0, 0, 2, 2, 2, 0 },
              tileid = 84
            },
            {
              wangid = { 2, 0, 2, 2, 2, 2, 2, 0 },
              tileid = 85
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 2, 2 },
              tileid = 86
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 2, 2 },
              tileid = 87
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 2, 0 },
              tileid = 88
            },
            {
              wangid = { 2, 0, 2, 0, 2, 2, 2, 0 },
              tileid = 89
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 0, 0 },
              tileid = 90
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 0, 0 },
              tileid = 91
            },
            {
              wangid = { 2, 2, 2, 2, 2, 2, 2, 2 },
              tileid = 92
            },
            {
              wangid = { 2, 0, 0, 0, 2, 2, 2, 2 },
              tileid = 93
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 2, 0 },
              tileid = 94
            },
            {
              wangid = { 2, 0, 2, 0, 2, 2, 2, 2 },
              tileid = 95
            },
            {
              wangid = { 2, 2, 2, 0, 2, 2, 2, 0 },
              tileid = 96
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 2, 0 },
              tileid = 97
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 2, 2 },
              tileid = 98
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 0, 0 },
              tileid = 99
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 0, 0 },
              tileid = 100
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 2, 2 },
              tileid = 101
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 2, 2 },
              tileid = 102
            },
            {
              wangid = { 2, 2, 2, 2, 2, 2, 2, 0 },
              tileid = 104
            },
            {
              wangid = { 2, 0, 2, 2, 2, 2, 2, 2 },
              tileid = 105
            },
            {
              wangid = { 0, 0, 2, 0, 2, 0, 0, 0 },
              tileid = 106
            },
            {
              wangid = { 0, 0, 0, 0, 2, 0, 2, 0 },
              tileid = 107
            },
            {
              wangid = { 0, 0, 2, 0, 0, 0, 0, 0 },
              tileid = 109
            },
            {
              wangid = { 0, 0, 2, 0, 0, 0, 2, 0 },
              tileid = 110
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 2, 0 },
              tileid = 111
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 2, 0 },
              tileid = 112
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 2, 2 },
              tileid = 113
            },
            {
              wangid = { 2, 2, 2, 0, 2, 2, 2, 2 },
              tileid = 114
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 0, 0 },
              tileid = 115
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 2, 0 },
              tileid = 116
            },
            {
              wangid = { 0, 0, 2, 2, 2, 0, 2, 0 },
              tileid = 117
            },
            {
              wangid = { 0, 0, 2, 0, 2, 2, 2, 0 },
              tileid = 118
            },
            {
              wangid = { 0, 0, 2, 0, 2, 0, 2, 0 },
              tileid = 119
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 0, 0 },
              tileid = 120
            },
            {
              wangid = { 2, 0, 0, 0, 2, 2, 2, 0 },
              tileid = 121
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 0, 0 },
              tileid = 122
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 2, 2 },
              tileid = 123
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 0, 0 },
              tileid = 124
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 2, 0 },
              tileid = 125
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 2, 0 },
              tileid = 126
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 2, 2 },
              tileid = 127
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 2, 0 },
              tileid = 128
            }
          }
        }
      },
      tilecount = 144,
      tiles = {
        {
          id = 0,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 1,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 2,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 3,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 4,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 5,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 6,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 7,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 8,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 9,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 10,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 11,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 12,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 13,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 14,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 15,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 16,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 17,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 18,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 19,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 20,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 21,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 23,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 24,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 25,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 26,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 27,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 28,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 29,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 30,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 31,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 32,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 33,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 34,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 35,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 36,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 37,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 38,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 39,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 40,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 41,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 42,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 43,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 44,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 45,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 46,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 47,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 48,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 49,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 50,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 51,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 52,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 53,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 54,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 55,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 56,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 57,
          properties = {
            ["collidable"] = true,
            ["spike"] = "up"
          }
        },
        {
          id = 58,
          properties = {
            ["collidable"] = true,
            ["spike"] = "right"
          }
        },
        {
          id = 59,
          properties = {
            ["collidable"] = true,
            ["spike"] = "left"
          }
        },
        {
          id = 60,
          properties = {
            ["collidable"] = true,
            ["spike"] = "down"
          }
        },
        {
          id = 61,
          properties = {
            ["collidable"] = true,
            ["spike"] = "up"
          }
        },
        {
          id = 63,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 64,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 65,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 66,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 67,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 68,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 69,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 70,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 72,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 73,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 81,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 82,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 83,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 84,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 85,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 86,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 87,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 88,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 89,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 90,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 91,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 92,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 93,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 94,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 95,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 96,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 97,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 98,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 99,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 100,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 101,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 102,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 104,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 105,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 106,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 107,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 108,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 109,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 110,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 111,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 112,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 113,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 114,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 115,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 116,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 117,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 118,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 119,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 120,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 121,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 122,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 123,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 124,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 125,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 126,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 127,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 128,
          properties = {
            ["collidable"] = true
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 1020,
      height = 100,
      id = 3,
      name = "world",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "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"
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "markers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1600,
          y = 608,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1168,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1344,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1872,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {
            ["used"] = true
          }
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2144,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2408,
          y = 496,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2496,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2976,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3120,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3184,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2880,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3128,
          y = 736,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3480,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3664,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4320,
          y = 656,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 400,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4512,
          y = 688,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "right"
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4704,
          y = 688,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5040,
          y = 736,
          width = 16,
          height = 80,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 89,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4848,
          y = 656,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 91,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5472,
          y = 656,
          width = 64,
          height = 16,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        },
        {
          id = 92,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5584,
          y = 768,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 93,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5696,
          y = 672,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5920,
          y = 688,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceX"] = 96,
            ["waitTime"] = 0
          }
        },
        {
          id = 95,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6064,
          y = 688,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceX"] = 96,
            ["waitTime"] = 0
          }
        },
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6384,
          y = 528,
          width = 16,
          height = 48,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        },
        {
          id = 104,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6384,
          y = 544,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "right"
          }
        },
        {
          id = 105,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
          y = 704,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 106,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
          y = 688,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 107,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
          y = 672,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 108,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6816,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 109,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7056,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["triggered"] = true
          }
        },
        {
          id = 110,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7218,
          y = 490,
          width = 28,
          height = 10,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceY"] = -64
          }
        },
        {
          id = 111,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7200,
          y = 640,
          width = 16,
          height = 64,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 112,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7328,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["triggered"] = true
          }
        },
        {
          id = 113,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7640,
          y = 560,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 8,
          visible = true,
          properties = {}
        },
        {
          id = 114,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2864,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {
            ["target"] = { id = 115 }
          }
        },
        {
          id = 115,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2928,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["triggered"] = true
          }
        },
        {
          id = 116,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6976,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {
            ["target"] = { id = 109 }
          }
        },
        {
          id = 117,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7280,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {
            ["target"] = { id = 112 }
          }
        },
        {
          id = 118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7904,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 10,
          visible = true,
          properties = {}
        },
        {
          id = 123,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8016,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
