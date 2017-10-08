note
	description: "A peg solitaire game player."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PLAYER

feature -- Constructor for descendant classes
	make
		local
			access: BOARD_TEMPLATES_ACCESS
		do
			templates := access.templates
			create game.make_from_board (templates.default_board)
		ensure
			default_board_set:
		Current.game.board ~ templates.default_board_out
		end

feature -- Attributes
	game: GAME
	templates: BOARD_TEMPLATES
end
