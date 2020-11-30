{{/*
    This code will remove AFK of user when user send message in AFK Mode.

    Recommend: Regex trigger with trigger `.*`.
*/}}

{{ if not (reFind `\A(-|<@!?204255221017214977>\s*)afk` .Cmd) }}
{{ if dbGet .User.ID "afk" }}
{{ print "Welcome back. " .User.Mention "\nRemoved your AFK's status" }}
{{ dbDel .User.ID "afk" }}
{{ end }}
{{ end }}