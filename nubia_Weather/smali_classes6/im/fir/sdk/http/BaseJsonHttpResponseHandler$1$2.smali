.class Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;->this$1:Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;

    iput-object p2, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;->this$1:Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;

    iget-object v0, v0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;->this$1:Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;

    iget v1, v1, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;->this$1:Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;

    iget-object v2, v2, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;->val$t:Ljava/lang/Throwable;

    iget-object v4, p0, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1$2;->this$1:Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;

    iget-object v4, v4, Lim/fir/sdk/http/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lim/fir/sdk/http/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
