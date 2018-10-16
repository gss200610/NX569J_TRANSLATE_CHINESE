.class Lim/fir/sdk/http/AsyncHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;


# instance fields
.field private final mResponder:Lim/fir/sdk/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lim/fir/sdk/http/AsyncHttpResponseHandler;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lim/fir/sdk/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lim/fir/sdk/http/AsyncHttpResponseHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lim/fir/sdk/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lim/fir/sdk/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
