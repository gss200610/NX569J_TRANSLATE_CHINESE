.class public abstract Lim/fir/sdk/callback/FIRResultCallback;
.super Lim/fir/sdk/http/JsonHttpResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lim/fir/sdk/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lim/fir/sdk/callback/FIRResultCallback;->onFailure(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lim/fir/sdk/callback/FIRResultCallback;->onFailure(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lim/fir/sdk/callback/FIRResultCallback;->onFailure(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lim/fir/sdk/callback/FIRResultCallback;->onFailure(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lim/fir/sdk/callback/FIRResultCallback;->onFailure(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lim/fir/sdk/callback/FIRResultCallback;->onFailure(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public abstract onFailure(Ljava/lang/String;I)V
.end method

.method public onFinish()V
    .locals 0

    invoke-super {p0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFinish()V

    invoke-virtual {p0}, Lim/fir/sdk/callback/FIRResultCallback;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onStart()V

    invoke-virtual {p0}, Lim/fir/sdk/callback/FIRResultCallback;->start()V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/fir/sdk/callback/FIRResultCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/fir/sdk/callback/FIRResultCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/fir/sdk/callback/FIRResultCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method
