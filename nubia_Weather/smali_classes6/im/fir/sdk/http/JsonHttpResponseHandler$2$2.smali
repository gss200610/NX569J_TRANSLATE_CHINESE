.class Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$2;

.field final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lim/fir/sdk/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$2;

    iput-object p2, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$2;

    iget v1, v1, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v2, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$2;

    iget-object v2, v2, Lim/fir/sdk/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
