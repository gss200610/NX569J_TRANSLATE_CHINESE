.class Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lim/fir/sdk/http/BaseJsonHttpResponseHandler;

.field final synthetic val$headers:[Lorg/apache/http/Header;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lim/fir/sdk/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/BaseJsonHttpResponseHandler;

    iput-object p2, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    iput p3, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iput-object p4, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lim/fir/sdk/http/BaseJsonHttpResponseHandler;->parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/BaseJsonHttpResponseHandler;

    new-instance v2, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$1;

    invoke-direct {v2, p0, v0}, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$1;-><init>(Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lim/fir/sdk/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseJsonHttpResponseHandler"

    const-string v2, "parseResponse thrown an problem"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/BaseJsonHttpResponseHandler;

    new-instance v2, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;

    invoke-direct {v2, p0, v0}, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;-><init>(Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lim/fir/sdk/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
