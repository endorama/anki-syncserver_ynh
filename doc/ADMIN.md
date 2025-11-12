## Configuration

### User Management

Users are configured through the YunoHost configuration panel for this app. You can access it via:
- Web Admin: Applications → Anki Sync Server → Config
- CLI: `yunohost app config show anki-sync-server`

Up to 5 users can be configured. For each user, provide credentials in the format: `username:password`

### Upload Limits

You can configure the maximum sync payload size (in megabytes) through the config panel. The default is 100 MB.

### Client Configuration

Use this URL for client configuration:
- If installed on root: `https://yourdomain.tld/`
- If installed on subpath: `https://yourdomain.tld/anki/` (note the trailing slash!)

**Important:** When using a subpath installation, always include the trailing slash in the sync URL!

#### Desktop Client

1. Open Anki
2. Go to Tools → Preferences → Syncing
3. Set the "Self-hosted sync server" field
4. Exit settings
5. Trigger a sync with Sync button (rightmost in the top bar)
6. Use the username and password you configured in the config panel

#### Mobile Clients

##### AnkiDroid (Android)
1. Open AnkiDroid
2. Tap the menu → Settings → Advanced → Custom sync server
3. Set Sync URL to your server URL (with trailing slash if using subpath)
4. Set Media sync URL to the same URL
5. Use the username and password you configured in the config panel

##### AnkiMobile (iOS)
1. Open AnkiMobile
2. Tap Settings (gear icon) → Sync
3. Tap "Sync Server" and enter your server URL (with trailing slash if using subpath)
4. Use the username and password you configured in the config panel


### Logs

Logs can be found at: `/var/log/anki-sync-server/anki-sync-server.log`
