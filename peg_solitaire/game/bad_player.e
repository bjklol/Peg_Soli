note
	description: "A bad player who loses many solitaire games."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_PLAYER

inherit
	PLAYER

create
	make

feature -- Commands
	loses_easy_board
			-- Lose a cross board.
		require
			current_game_is_easy: True
				-- Your task.
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			***.***
			***O***
			***O***
			***.***
			***O***
			***.***
			*******
			]"
			check assertion end

			game.move_up (3, 4)
			assertion := game.out ~ "[
			Game is over: Yes
			Game is won : No
			Board Status:
			***O***
			***.***
			***.***
			***.***
			***O***
			***.***
			*******
			]"
			check assertion end
		ensure
			finished_and_lost_game:  True
				-- Your task.
		end

	loses_pyramid_game
		require
			current_game_is_pyramid:
				current_game_is_pyramid: game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**...**
									**.O.**
									..OOO..
									.OOOOO.
									OOOOOOO
									**...**
									**...**
									]"
		local
			assertion: BOOLEAN
		do
				assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**...**
						**.O.**
						..OOO..
						.OOOOO.
						OOOOOOO
						**...**
						**...**
						]"
						check assertion end
					
						game.move_right (4, 5)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**...**
						**.O.**
						..OOO..
						.OOO..O
						OOOOOOO
						**...**
						**...**
						]"
						check assertion end

						game.move_up (4, 3)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**...**
						**.O.**
						..OOO..
						.OOO..O
						OOOOOOO
						**...**
						**...**
						]"
						check assertion end

						game.move_up (5, 7)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**...**
						**.O.**
						..OOO.O
						.OOO...
						OOOOOO.
						**...**
						**...**
						]"
						check assertion end

						game.move_up (3, 4)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**...**
						..O.O.O
						.OOO...
						OOOOOO.
						**...**
						**...**
						]"
						check assertion end

						game.move_right (4, 3)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**...**
						..O.O.O
						.O..O..
						OOOOOO.
						**...**
						**...**
						]"
						check assertion end

						game.move_up (4, 5)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**..O**
						..O...O
						.O.....
						OOOOOO.
						**...**
						**...**
						]"
						check assertion end
						game.move_right (5, 5)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**..O**
						..O...O
						.O.....
						OOOO..O
						**...**
						**...**
						]"
						check assertion end
						game.move_right (5, 3)
						assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**..O**
						..O...O
						.O.....
						OO..O.O
						**...**
						**...**
						]"
						check assertion end
						game.move_right (5, 1)
						assertion := game.out ~ "[
						Game is over: Yes
						Game is won : No
						Board Status:
						**.O.**
						**..O**
						..O...O
						.O.....
						..O.O.O
						**...**
						**...**
						]"
						check assertion end
		ensure
			finished_and_lost_game:
				game.is_over and not game.is_won
		end

	loses_arrow_game
		require
			current_game_is_arrow:
				current_game_is_arrow: game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.O.**
				**OOO**
				.OOOOO.
				...O...
				...O...
				**OOO**
				**OOO**
				]"
		local
			assertion: BOOLEAN
		do
		assertion := game.out ~ "[
							Game is over: No
							Game is won : No
							Board Status:
							**.O.**
							**OOO**
							.OOOOO.
							...O...
							...O...
							**OOO**
							**OOO**
							]"
				check assertion end
				game.move_down(2,3)
				assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**OO.**
						.OOO.O.
						...OO..
						...O...
						**OOO**
						**OOO**
						]"
						check assertion end
				game.move_down(2,1)
				assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**.O.**
						.O.O.O.
						..OOO..
						...O...
						**OOO**
						**OOO**
						]"
						check assertion end
				game.move_up(7,3)
				assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**.O.**
						.O.O.O.
						..OOO..
						..OO...
						**.OO**
						**.OO**
						]"
						check assertion end
					game.move_up(7,5)
					assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**.O.**
						.O.O.O.
						..OOO..
						..OOO..
						**.O.**
						**.O.**
						]"
						check assertion end
					game.move_down(4,5)
					assertion := game.out ~ "[
						Game is over: No
						Game is won : No
						Board Status:
						**.O.**
						**.O.**
						.O.O.O.
						..OO...
						..OO...
						**.OO**
						**.O.**
						]"
						check assertion end
					game.move_down(4,5)
					assertion := game.out ~ "[
						Game is over: Yes
						Game is won : No
						Board Status:
						**.O.**
						**.O.**
						.O.O.O.
						...O...
						...O...
						**OOO**
						**.O.**
						]"
						check assertion end
		ensure
			finished_and_lost_game:
			game.is_over and not game.is_won
		end

	loses_diamond_game
		require
		current_game_is_diamond:
		game.out ~ "[
					Game is over: No
					Game is won : No
					Board Status:
					**.O.**
					**OOO**
					.OOOOO.
					OOO.OOO
					.OOOOO.
					**OOO**
					**.O.**
					]"
		local
			assertion: BOOLEAN
		do
		assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**.O.**
			**OOO**
			.OOOOO.
			OOO.OOO
			.OOOOO.
			**OOO**
			**.O.**
			]"
			check assertion end

			game.move_down(5,3)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**.O.**
			**OOO**
			.OOOOO.
			OOO.OOO
			.O.OOO.
			**.OO**
			**OO.**
			]"
			check assertion end

			game.move_down(5,5)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**.O.**
			**OOO**
			.OOOOO.
			OOO.OOO
			.O.O.O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_up(3,3)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**OO.**
			**.OO**
			.O.OOO.
			OOO.OOO
			.O.O.O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_up(3,5)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**OOO**
			**.O.**
			.O.O.O.
			OOO.OOO
			.O.O.O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_right(4,2)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**OOO**
			**.O.**
			.O.O.O.
			O..OOOO
			.O.O.O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_left(4,5)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**OOO**
			**.O.**
			.O.O.O.
			O.O..OO
			.O.O.O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_left(4,7)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**OOO**
			**.O.**
			.O.O.O.
			O.O.O..
			.O.O.O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_down(2,4)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**OOO**
			**...**
			.O...O.
			O.OOO..
			.O.O.O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_up(5,4)
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			**OOO**
			**...**
			.O.O.O.
			O.O.O..
			.O...O.
			**.O.**
			**OOO**
			]"
			check assertion end

			game.move_up(7,4)
			assertion := game.out ~ "[
			Game is over: Yes
			Game is won : No
			Board Status:
			**OOO**
			**...**
			.O.O.O.
			O.O.O..
			.O.O.O.
			**...**
			**O.O**
			]"
			check assertion end

		ensure
			finished_and_lost_game:
			game.is_over and not game.is_won
		end

	loses_skull_game
		require
		current_game_is_skull:
		 game.out ~ "[
					Game is over: No
					Game is won : No
					Board Status:
					**OOO**
					**OOO**
					.OOOOO.
					.O.O.O.
					.OOOOO.
					**OOO**
					**OOO**
					]"
		local
			assertion: BOOLEAN
		do
		assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**OOO**
				.OOOOO.
				.O.O.O.
				.OOOOO.
				**OOO**
				**OOO**
				]"
				check assertion end

				game.move_left(3,3)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**OOO**
				O..OOO.
				.O.O.O.
				.OOOOO.
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_right(3,5)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**OOO**
				O..O..O
				.O.O.O.
				.OOOOO.
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_left(5,3)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**OOO**
				O..OOO.
				.O.O.O.
				O..OOO.
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_right(5,5)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**OOO**
				**OOO**
				O..O..O
				.O.O.O.
				O..O..O
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_down(1,3)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.OO**
				**.OO**
				O.OO..O
				.O.O.O.
				O..O..O
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_right(3,3)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**.OO**
				**.OO**
				O...O.O
				.O.O.O.
				O..O..O
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_left(1,5)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O..**
				**.OO**
				O...O.O
				.O.O.O.
				O..O..O
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_up(3,5)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**.O.**
				O.....O
				.O.O.O.
				O..O..O
				**OOO**
				**OOO**
				]"
				check assertion end
				game.move_up(7,5)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**.O.**
				O.....O
				.O.O.O.
				O..OO.O
				**OO.**
				**OO.**
				]"
				check assertion end
				game.move_right(6,3)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**.O.**
				O.....O
				.O.O.O.
				O..OO.O
				**..O**
				**OO.**
				]"
				check assertion end
				game.move_down(5,5)
				assertion := game.out ~ "[
				Game is over: No
				Game is won : No
				Board Status:
				**O.O**
				**.O.**
				O.....O
				.O.O.O.
				O..O..O
				**...**
				**OOO**
				]"
				check assertion end
		ensure
			finished_and_lost_game:
				game.is_over and not game.is_won
		end
end
