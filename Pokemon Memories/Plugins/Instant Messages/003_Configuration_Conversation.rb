#===============================================================================
# Conversation registrations
#
# The main conversations used in the game. These can be anything from one-off
# messages to the player to involved group conversations between multiple
# contacts.
#===============================================================================
# Parameters:
#   - :id => Symbol - The ID of the specific conversation
#   - :group => Symbol - The ID of the group the conversation is housed in
#   - :messages => Array - Contains each message used in the conversation. See
#                  Messages Setup format below.
#   - :important => (Optional) Boolean - If true, the messages are required to be 
#                   viewed before doing anything else in the game. Will force 
#                   open the Instant Messages app.
#   - :instant => (Optional) Boolean - If true, the messages will appear instantly
#                 when opened, instead of being real-time.
#   - :reltimestamp => (Optional) Array - Contains the definition of the timestamp
#                      for the message set in the past relative to the moment the  
#                      message is received. This only applies if the message is 
#                      included in MESSAGE_HISTORY_LIST. Format:
#                             [Years, Months, Days, Hours, Minutes, Seconds]
#                      NOTE: You do not need to include all of these. If you don't
#                      care about specific units, you can omit them (as long as
#                      all other array indexes after it are also omitted) or set
#                      them to 0. Examples:
#                      [1, 6, 14] - Sets the time stamp to 1 year, 6 months, and 14
#                                   days in the past relative to Now.
#                      [15, 0, 11, 0, 0, 30] - Sets the time stamp to 15 years, 11
#                                   days and 30 seconds in the past relative to Now.
#
# Messages Setup format:
#   [<Contact ID>, <Message Type>, <Parameter>, <(Optional) Delay Time/Variable>]
#
# Contact ID => The ID number of member of the group will be speaking, as defined in the Group's members hash.
#                Set to 0 for the Player. Set to -1 for a System Message.
# Message Type => Symbol defining the type of the message. Available options:
#               - :Text => A basic text message.
#               - :RedoText => Same as text, except it will make it look like the contact typed out a message, reconsidered it, and typed out a new one.
#               - :Leave => A system message stating that a contact has left the chat.
#               - :Enter => A system message stating that a contact has entered the chat.
#               - :GroupName => Used to change the group name. Shows a system message stating that the group name has changed.
#               - :Picture => Used to show a picture as a message.
# Parameter => Enter a parameter value based on the Message Type:
#               - :Text => A string representing the text of the message. For a Player Message that show choices to make, or NPC responses that change
#                           based on the Player's choice, use an array of strings.
#               - :RedoText => Same as :Text.
#               - :Leave => The Contact ID of the contact that left.
#               - :Enter => The Contact ID of the contact that entered.
#               - :GroupName => A string representing the new group name. Set to nil to revert it back to the original group name.
#               - :Picture => A string representing the file name of a picture saved in Graphics/UI/Instant Messages/Pictures.
# Delay Time/Variable => Optional. For messages other than a Player message, set an integer to delay the message by a number of seconds.
#                        For Player messages:
#                       - Set to an integer representing the ID of a Game Variable that you want to be set to the index value of the choice made.
#                       - Set to a string representing a code snippet to run, where {VALUE} will be replaced the by index value
#                         of the choice made. For example, "$player.party[0].gender = {VALUE}"
#

GameData::InstantMessageConversation.register({
    :id             => :MIA1,
    :group          => :MIA,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("RAYOOOOOOUUUUUUU"),0],
                        [1, :Text, _INTL("J'AI UNE QUESTION!!!")],
                        [0, :Text, _INTL("Pas maintenant, je bosse.")],
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :MIA2,
    :group          => :MIA,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("STP C URGENT!!",0)],
                        [1, :Text, _INTL("RÉPONDS RÉPONDS RÉPONDS RÉPONDS RÉPONDS RÉPONDS RÉPONDS RÉPONDS RÉPONDS")],
                        [0, :Text, _INTL("Quoi ?")],
                        [1, :Text, _INTL("Tu m'aimerais toujours si j'étais un Tadmorv ?")],
                        [0, :Text, [_INTL("Non."), _INTL("Oui. Tu pues déjà de toute façon.")]],
                        [1, :Text, _INTL("<icon=emojiSad> ")],
                        [1, :Text, _INTL("Je vais pleurer.")],
                        [0, :Text, _INTL("<icon=emojiThumbsUp> ")],
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :EINER,
    :group          => :EINER,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("Hey, la réunion avec le comité de direction est fixée au lundi 21."),0],
                        [1, :Text, _INTL("Tu penses que ton rapport climat/biodiv sera prêt d'ici là ?")],
                        [0, :Text, _INTL("Oui. Normalement, ça devrait le faire.")],
                        [1, :Text, _INTL("Super, merci. Envoie le moi quand tu l'auras fini.")],
                        [0, :Text, _INTL("<icon=emojiThumbsUp> ")],
                        [0, :Text, _INTL("Zake ?")],
                        [1, :Text, _INTL("Oui ?")],
                        [0, :Text, _INTL("Tu penses vraiment pouvoir les convaincre ?")],
                        [1, :Text, _INTL("J'espère.")],
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :EMMA,
    :group          => :EMMA,
    :important      => true,
    :messages       => [
                        [1, :Text, _INTL("EINER_FILE_1.zip"),0],
                    ]
})

GameData::InstantMessageConversation.register({
    :id             => :MIA_YESTERDAY,
    :group          => :MIA,
    :reltimestamp   => [0, 0, 1, 5, 0, 15],
    :messages       => [
                        [1, :Text, _INTL("Prout.")],
                        [1, :Text, _INTL("Prout.")],
                        [1, :Text, _INTL("Prout.")],
                        [0, :Text, _INTL("Tu n'es vraiment pas pertinente.")]
    ]
})


