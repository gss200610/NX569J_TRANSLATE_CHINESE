.class Lim/fir/sdk/http/RequestHandle$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lim/fir/sdk/http/RequestHandle;

.field final synthetic val$_request:Lim/fir/sdk/http/AsyncHttpRequest;

.field final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lim/fir/sdk/http/RequestHandle;Lim/fir/sdk/http/AsyncHttpRequest;Z)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/http/RequestHandle$1;->this$0:Lim/fir/sdk/http/RequestHandle;

    iput-object p2, p0, Lim/fir/sdk/http/RequestHandle$1;->val$_request:Lim/fir/sdk/http/AsyncHttpRequest;

    iput-boolean p3, p0, Lim/fir/sdk/http/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lim/fir/sdk/http/RequestHandle$1;->val$_request:Lim/fir/sdk/http/AsyncHttpRequest;

    iget-boolean v1, p0, Lim/fir/sdk/http/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v1}, Lim/fir/sdk/http/AsyncHttpRequest;->cancel(Z)Z

    return-void
.end method
