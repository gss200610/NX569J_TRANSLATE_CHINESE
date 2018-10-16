.class Lim/fir/sdk/http/JsonHttpResponseHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

.field final synthetic val$headers:[Lorg/apache/http/Header;

.field final synthetic val$responseBytes:[B

.field final synthetic val$statusCode:I

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lim/fir/sdk/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    iput p3, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    invoke-virtual {v0, v1}, Lim/fir/sdk/http/JsonHttpResponseHandler;->parseResponse([B)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    new-instance v2, Lim/fir/sdk/http/JsonHttpResponseHandler$2$1;

    invoke-direct {v2, p0, v0}, Lim/fir/sdk/http/JsonHttpResponseHandler$2$1;-><init>(Lim/fir/sdk/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lim/fir/sdk/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    new-instance v2, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;

    invoke-direct {v2, p0, v0}, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;-><init>(Lim/fir/sdk/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lim/fir/sdk/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
