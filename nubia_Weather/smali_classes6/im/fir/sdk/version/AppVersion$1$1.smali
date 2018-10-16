.class Lim/fir/sdk/version/AppVersion$1$1;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic this$0:Lim/fir/sdk/version/AppVersion$1;

.field final synthetic val$successStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lim/fir/sdk/version/AppVersion$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/version/AppVersion$1$1;->this$0:Lim/fir/sdk/version/AppVersion$1;

    iput-object p2, p0, Lim/fir/sdk/version/AppVersion$1$1;->val$successStr:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$1$1;->val$successStr:Ljava/lang/String;

    invoke-static {v0}, Lim/fir/sdk/version/AppVersion;->access$000(Ljava/lang/String;)Lim/fir/sdk/version/AppVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$1$1;->this$0:Lim/fir/sdk/version/AppVersion$1;

    iget-object v0, v0, Lim/fir/sdk/version/AppVersion$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lim/fir/sdk/utils/g;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "version_Name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_Code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    check-cast p1, Lim/fir/sdk/version/AppVersion;

    invoke-virtual {p1}, Lim/fir/sdk/version/AppVersion;->getVersionCode()I

    move-result v2

    if-gt v2, v0, :cond_0

    invoke-virtual {p1}, Lim/fir/sdk/version/AppVersion;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$1$1;->this$0:Lim/fir/sdk/version/AppVersion$1;

    iget-object v0, v0, Lim/fir/sdk/version/AppVersion$1;->val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lim/fir/sdk/callback/VersionCheckCallback;->onSuccess(Lim/fir/sdk/version/AppVersion;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$1$1;->this$0:Lim/fir/sdk/version/AppVersion$1;

    iget-object v0, v0, Lim/fir/sdk/version/AppVersion$1;->val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lim/fir/sdk/callback/VersionCheckCallback;->onSuccess(Lim/fir/sdk/version/AppVersion;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$1$1;->this$0:Lim/fir/sdk/version/AppVersion$1;

    iget-object v0, v0, Lim/fir/sdk/version/AppVersion$1;->val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "parse data error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lim/fir/sdk/callback/VersionCheckCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
