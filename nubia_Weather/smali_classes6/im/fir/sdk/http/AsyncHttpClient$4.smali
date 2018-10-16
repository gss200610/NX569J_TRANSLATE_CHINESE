.class Lim/fir/sdk/http/AsyncHttpClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lim/fir/sdk/http/AsyncHttpClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lim/fir/sdk/http/AsyncHttpClient;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->this$0:Lim/fir/sdk/http/AsyncHttpClient;

    iput-object p2, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->this$0:Lim/fir/sdk/http/AsyncHttpClient;

    invoke-static {v0}, Lim/fir/sdk/http/AsyncHttpClient;->access$100(Lim/fir/sdk/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/fir/sdk/http/RequestHandle;

    iget-boolean v2, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v2}, Lim/fir/sdk/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->this$0:Lim/fir/sdk/http/AsyncHttpClient;

    invoke-static {v0}, Lim/fir/sdk/http/AsyncHttpClient;->access$100(Lim/fir/sdk/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lim/fir/sdk/http/AsyncHttpClient$4;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
