global class PostInstallClass implements InstallHandler {
    global void onInstall(InstallContext context) {
        if(context.previousVersion() == null) {
            Account a = new Account(name='Newco');
            insert(a);
        }
        else if(context.previousVersion().compareTo(new Version(1,0)) == 0) {
            Account a = new Account(name='Upgrading from Version 1.0');
            insert(a);
        }
        if(context.isUpgrade()) {
            Account a = new Account(name='Sample Survey during Upgrade');
            insert(a);
        }
        if(context.isPush()) {
            Account a = new Account(name='Sample Survey during Push');
            insert(a);
        }
    }
}