.class Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;
.super Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;
.source "NubiaUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "exist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NubiaUpgradeManager onDownloadComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetNewVersion data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v3}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcn/nubia/upgrade/util/ReportUtils;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 189
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 192
    .local v8, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v8, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :catch_0
    move-exception v6

    .line 182
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public onDownloadError(I)V
    .locals 9
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownLoadError Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetNewVersion data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v3}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcn/nubia/upgrade/util/ReportUtils;->report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 157
    .local v8, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v8, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_1

    .line 151
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    :catch_0
    move-exception v6

    .line 153
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "NubiaUpgradeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public onDownloadPause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 119
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    :cond_1
    return-void

    .line 123
    :cond_2
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 125
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    goto :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 3
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    return-void

    .line 208
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 210
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    goto :goto_0
.end method

.method public onResumeDownload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 101
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    :cond_1
    return-void

    .line 105
    :cond_2
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 107
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    goto :goto_0
.end method

.method public onStartDownload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v2, "NubiaUpgradeManager"

    const-string v3, "NubiaUpgradeManager onStartDownload:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v2

    sget-object v3, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v3, v2, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 82
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    :cond_1
    return-void

    .line 86
    :cond_2
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 88
    .local v1, "listener":Lcn/nubia/upgrade/http/IDownLoadListener;
    invoke-interface {v1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    goto :goto_0
.end method
