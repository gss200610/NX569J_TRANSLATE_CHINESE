.class public Lim/fir/sdk/http/JsonHttpResponseHandler;
.super Lim/fir/sdk/http/TextHttpResponseHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lim/fir/sdk/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lim/fir/sdk/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 6

    if-eqz p3, :cond_1

    new-instance v0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lim/fir/sdk/http/JsonHttpResponseHandler$2;-><init>(Lim/fir/sdk/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p4, v0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 2

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], String) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    new-instance v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lim/fir/sdk/http/JsonHttpResponseHandler$1;-><init>(Lim/fir/sdk/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;)V

    invoke-virtual {p0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected parseResponse([B)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\ufeff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
