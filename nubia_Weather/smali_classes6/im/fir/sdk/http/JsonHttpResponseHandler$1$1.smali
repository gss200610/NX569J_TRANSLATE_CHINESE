.class Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

.field final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lim/fir/sdk/http/JsonHttpResponseHandler$1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v1, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget v2, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v3, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v1, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget v2, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v3, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3, v0}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v1, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget v2, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v3, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Response cannot be parsed as JSON data"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->this$0:Lim/fir/sdk/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->this$1:Lim/fir/sdk/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lim/fir/sdk/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lim/fir/sdk/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lim/fir/sdk/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
