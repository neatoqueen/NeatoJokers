-- translation by Brookling, Dimserene, and others
return {
    descriptions = {
        Joker = {
            j_neat_australianshepherd = {
                name = "澳洲牧羊犬",
                text = {
                    "在选择{C:attention}盲注{}时",
                    "生成一张{C:planet}星球牌{}",
                    "{C:inactive}(必须有空位){}"
                },
            },
            j_neat_bananastand = {
                name = "香蕉摊",
                text = {
                    "在{C:attention}出牌{}时",
                    "有{C:green}#1#/#2#{}的几率获得{C:money}$#4#{},",
                    "在回合结束时",
                    "有{C:green}#1#/#3#{}的几率{C:red}自毁{}  ",
                    "{C:inactive}自毁时失去所有资金{}"
                },
            },
            j_neat_blueyourself = {
                name = "蓝自己",
                text = {
                    "重复触发带有{C:dark_edition}闪箔{}",
                    "版本的{C:attention}小丑牌{}和{C:attention}记分牌{}",
                    "{C:inactive}(不包括#1#){}"
                },
            },
            j_neat_dayman = {
                name = "白日侠",
                text = {
                    "如果回合的{C:attention}第一次出牌{}",
                    "只有{C:attention}1张Q{}，则摧毁",
                    "这张Q，并获得{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前为{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                },
            },
            j_neat_dogsplayingbalatro = {
                name = "狗玩小丑牌",
                text = {
                    "使用一张{C:planet}星球牌{}时",
                    "有{C:green}#1#/#2#{}的几率获得",
                    "一张随机的{C:spectral}幻灵牌{}",
                    "{C:inactive}(必须有空位){}"
                },
            },
            j_neat_frostedprimerib = {
                name = '霜冻肋排',
                text = {
                    "在接下来的{C:attention}#3#{}次出牌里",
                    "所有的{C:attention}记分牌{}永久",
                    "获得{C:chips}+#1#{}筹码和{C:mult}+#2#{}倍率"
                },
            },
            j_neat_hatsunejoku = {
                name = "小丑初音",
                text = {
                    "所有计分的{C:attention}9{}",
                    "额外触发{C:attention}2{}次"
                },
            },
            j_neat_icecreamsandwich = {
                name = "雪糕三明治",
                text = {
                    "{X:mult,C:white}X#1#{}倍率",
                    "回合结束时",
                    "失去{X:mult,C:white}X#2#{}倍率",
                },
            },
            j_neat_jokerzd = {
                name = "小丑赵",
                text = {
                    "每{C:attention}购买{}一张不重复的",
                    "新小丑牌，这张小丑牌",
                    "获得{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前为{X:mult,C:white}X#2#{}{C:inactive}倍率)"
                },
            },
            j_neat_lockin = {
                name = "专注小丑",
                text = {
                    "在选择{C:attention}盲注{}时，这张",
                    "小丑牌获得{C:mult}+#1#{}倍率",
                    "{C:attention}售出{}一张小丑牌时重置",
                    "{C:inactive}(当前为{C:mult}+#2#{C:inactive}倍率)"
                }
            },
            j_neat_nightman = {
                name = "夜之魔",
                text = {
                    "出牌时随机{C:attention}摧毁{}",
                    "一张记分牌，",
                    "并获得{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前为{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                },
            },
            j_neat_sparecutoffs = {
                name = "备用牛仔短裤",
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#{}，则这张",
                    "小丑牌获得{C:chips}+#1#{}筹码",
                    "{C:inactive}(当前为{C:chips}+#3#{C:inactive}筹码)"
                },
            },
            j_neat_tabbycat = {
                name = "虎斑猫",
                text = {
                    "每弃掉{C:attention}#2#{}{C:inactive}[#3#]{}张牌",
                    "这张小丑牌获得{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前为{C:mult}+#4#{C:inactive}倍率)"
                },
            },
            j_neat_unpaidintern = {
                name = "无薪实习生",
                text = {
                    "打出的{C:attention}9{}和{C:attention}5",
                    "在计分时",
                    "给予{C:chips}+#1#{}筹码",
                },
            },
            j_neat_wildcardcharlie = {
                name = "狂野查理",
                text = {
                    "当{C:attention}万能牌{}被打出计分",
                    "或留在手牌中时",
                    "都给予{X:mult,C:white}X#1#{}倍率"
                },
            },
        },
        Mod = {
            Neato_Jokers = {
                name = "Neato Jokers",
                text = {
                    "新加入{C:red}15{}张主题小丑牌,由{C:attention}Neato{}绘制！",
                    "关注{C:purple}twitch.tv/neato{}来支持我！",  -- the "twitch.tv/neato" is turned into a clickable link
                    " ",
                    " ",
                    "{C:attention}特色主题包括：{}",
                    "《费城阳光永远灿烂》，动物，",
                    "内容创作者，油管主播，初音未来",
                    "《发展受阻》，以及更多……",
                    " ",
                    " ",
                    "编程与实现由{C:neat_lars}Larswijn{}和{C:neat_lia}Lia{}完成。",
                    "卡牌能力由我们三人在社区协助下完成。",
                }
            }
        },
        Other = {
            card_extra_mult = {
                text = {
                    "{C:mult}#1#{}额外倍率",
                },
            },
        },
    },
    misc = {
        dictionary = {
            b_open_link = "点击在浏览器中打开",
            k_lockin = "锁定！",
            k_caught = "抓到了！",
            k_cow = "哞！",
            k_dog = "汪！",
            k_gasp = "哎呦！",
            k_dozens = "咱们人多势众！老多人了！",

            neato_music_options = {
                "始终播放",
                "拥有时播放",
                "购买时短暂播放",
                "不播放",
            },
            neato_music_description = {
                "何时播放小丑初音的歌",
                "(由 Pichu-P 创作)"
            },
        }
    }
}
