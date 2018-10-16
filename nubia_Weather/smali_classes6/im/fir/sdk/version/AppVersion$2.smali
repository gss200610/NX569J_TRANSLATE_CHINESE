.class final Lim/fir/sdk/version/AppVersion$2;
.super Lim/fir/sdk/callback/FIRResultCallback;


# instance fields
.field final synthetic val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lim/fir/sdk/callback/VersionCheckCallback;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/version/AppVersion$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lim/fir/sdk/version/AppVersion$2;->val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

    invoke-direct {p0}, Lim/fir/sdk/callback/FIRResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$2;->val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

    invoke-interface {v0}, Lim/fir/sdk/callback/VersionCheckCallback;->onFinish()V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$2;->val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

    invoke-interface {v0, p1, p2}, Lim/fir/sdk/callback/VersionCheckCallback;->onFail(Ljava/lang/String;I)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lim/fir/sdk/version/AppVersion$2$1;

    invoke-direct {v0, p0, p1}, Lim/fir/sdk/version/AppVersion$2$1;-><init>(Lim/fir/sdk/version/AppVersion$2;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lim/fir/sdk/utils/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion$2;->val$callback:Lim/fir/sdk/callback/VersionCheckCallback;

    invoke-interface {v0}, Lim/fir/sdk/callback/VersionCheckCallback;->onStart()V

    return-void
.end method
