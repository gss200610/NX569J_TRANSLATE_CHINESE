.class public final Lim/fir/sdk/data/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lim/fir/sdk/data/a;


# instance fields
.field a:Lim/fir/sdk/http/AsyncHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lim/fir/sdk/http/AsyncHttpClient;

    invoke-direct {v0}, Lim/fir/sdk/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lim/fir/sdk/data/a;->a:Lim/fir/sdk/http/AsyncHttpClient;

    iget-object v0, p0, Lim/fir/sdk/data/a;->a:Lim/fir/sdk/http/AsyncHttpClient;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lim/fir/sdk/http/AsyncHttpClient;->setTimeout(I)V

    iget-object v0, p0, Lim/fir/sdk/data/a;->a:Lim/fir/sdk/http/AsyncHttpClient;

    const-string v1, "HTTP_FIR_SDK_VERSION"

    sget-object v2, Lim/fir/sdk/FIR;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lim/fir/sdk/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lim/fir/sdk/data/a;->a:Lim/fir/sdk/http/AsyncHttpClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/fir/sdk/http/AsyncHttpClient;->setURLEncodingEnabled(Z)V

    return-void
.end method

.method public static a()Lim/fir/sdk/data/a;
    .locals 1

    sget-object v0, Lim/fir/sdk/data/a;->b:Lim/fir/sdk/data/a;

    if-nez v0, :cond_0

    new-instance v0, Lim/fir/sdk/data/a;

    invoke-direct {v0}, Lim/fir/sdk/data/a;-><init>()V

    sput-object v0, Lim/fir/sdk/data/a;->b:Lim/fir/sdk/data/a;

    :cond_0
    sget-object v0, Lim/fir/sdk/data/a;->b:Lim/fir/sdk/data/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lim/fir/sdk/callback/FIRResultCallback;)V
    .locals 6

    iget-object v0, p0, Lim/fir/sdk/data/a;->a:Lim/fir/sdk/http/AsyncHttpClient;

    const-string v4, "application/json"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lim/fir/sdk/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lim/fir/sdk/http/ResponseHandlerInterface;)Lim/fir/sdk/http/RequestHandle;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/apache/http/entity/StringEntity;Lim/fir/sdk/callback/FIRResultCallback;)V
    .locals 1

    const-string v0, "http://collector.bughd.com/crashes"

    invoke-direct {p0, p1, v0, p2, p3}, Lim/fir/sdk/data/a;->a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lim/fir/sdk/callback/FIRResultCallback;)V

    return-void
.end method

.method public final a(Lim/fir/sdk/callback/FIRResultCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, ""

    packed-switch p4, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lim/fir/sdk/data/a;->a:Lim/fir/sdk/http/AsyncHttpClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lim/fir/sdk/http/AsyncHttpClient;->get(Ljava/lang/String;Lim/fir/sdk/http/RequestParams;Lim/fir/sdk/http/ResponseHandlerInterface;)Lim/fir/sdk/http/RequestHandle;

    return-void

    :pswitch_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.fir.im/apps/latest/%1s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?api_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lim/fir/sdk/utils/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.fir.im/apps/latest/%1s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?type=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string v0, "http://www.wandoujia.com/apps/%s?json"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;Lorg/apache/http/entity/StringEntity;Lim/fir/sdk/callback/FIRResultCallback;)V
    .locals 1

    const-string v0, "http://collector.bughd.com/actived"

    invoke-direct {p0, p1, v0, p2, p3}, Lim/fir/sdk/data/a;->a(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lim/fir/sdk/callback/FIRResultCallback;)V

    return-void
.end method
