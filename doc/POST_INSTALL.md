## Next Steps

1. Configure users through the YunoHost config panel:
   - Web: Applications → Anki Sync Server → Config
   - CLI: `yunohost app config show anki-sync-server`

2. Configure your Anki clients to use your server:
   - Desktop: Tools → Preferences → Sync
   - Set sync URL to your server URL
   - **Important:** Include trailing slash if using subpath!

3. Test synchronization:
   - Add or modify a card in Anki
   - Click the Sync button
   - Enter your username and password

For detailed client configuration instructions, see the admin documentation.

