.class Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;
.super Ljava/lang/Object;
.source "NubiaUpgradeManager.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersionWithServerConf(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 362
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getversion Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onError(I)V

    .line 366
    :cond_0
    return-void
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 6
    .param p1, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 329
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v4, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$302(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;

    .line 330
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getSilentFlag()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 331
    .local v0, "silentDownload":Z
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getSilentFlag()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 332
    .local v1, "silentUpgrade":Z
    :goto_1
    const-string v2, "NubiaUpgradeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetNewVersion data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->setSlientInstaller(Z)V

    .line 335
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->setSlientDownload(Z)V

    .line 338
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/util/CommonUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string v2, "NubiaUpgradeManager"

    const-string v3, "SlientDownload..."

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 351
    :cond_0
    :goto_2
    return-void

    .end local v0    # "silentDownload":Z
    .end local v1    # "silentUpgrade":Z
    :cond_1
    move v0, v3

    .line 330
    goto :goto_0

    .restart local v0    # "silentDownload":Z
    :cond_2
    move v1, v3

    .line 331
    goto :goto_1

    .line 346
    .restart local v1    # "silentUpgrade":Z
    :cond_3
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v2, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_2
.end method

.method public onGetNoVersion()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {v0}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNoVersion()V

    .line 358
    :cond_0
    return-void
.end method
