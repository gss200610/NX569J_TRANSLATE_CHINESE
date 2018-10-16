.class final Lim/fir/sdk/crash/b;
.super Lim/fir/sdk/callback/FIRResultCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lim/fir/sdk/crash/a;


# direct methods
.method constructor <init>(Lim/fir/sdk/crash/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/crash/b;->b:Lim/fir/sdk/crash/a;

    iput-object p2, p0, Lim/fir/sdk/crash/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Lim/fir/sdk/callback/FIRResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    return-void
.end method

.method public final onFailure(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x1f4

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lim/fir/sdk/crash/b;->b:Lim/fir/sdk/crash/a;

    iget-object v1, p0, Lim/fir/sdk/crash/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lim/fir/sdk/crash/a;->a(Lim/fir/sdk/crash/a;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StateCode---->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   errorMsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/fir/sdk/utils/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send crash success"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/fir/sdk/utils/c;->a(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lim/fir/sdk/crash/b;->b:Lim/fir/sdk/crash/a;

    iget-object v1, p0, Lim/fir/sdk/crash/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lim/fir/sdk/crash/a;->a(Lim/fir/sdk/crash/a;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_id repeated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/fir/sdk/crash/b;->b:Lim/fir/sdk/crash/a;

    iget-object v1, p0, Lim/fir/sdk/crash/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lim/fir/sdk/crash/a;->a(Lim/fir/sdk/crash/a;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final start()V
    .locals 0

    return-void
.end method
