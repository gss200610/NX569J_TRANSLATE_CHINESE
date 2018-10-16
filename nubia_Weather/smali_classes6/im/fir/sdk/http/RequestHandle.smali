.class public Lim/fir/sdk/http/RequestHandle;
.super Ljava/lang/Object;


# instance fields
.field private final request:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lim/fir/sdk/http/AsyncHttpRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lim/fir/sdk/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3

    iget-object v0, p0, Lim/fir/sdk/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/fir/sdk/http/AsyncHttpRequest;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lim/fir/sdk/http/RequestHandle$1;

    invoke-direct {v2, p0, v0, p1}, Lim/fir/sdk/http/RequestHandle$1;-><init>(Lim/fir/sdk/http/RequestHandle;Lim/fir/sdk/http/AsyncHttpRequest;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0, p1}, Lim/fir/sdk/http/AsyncHttpRequest;->cancel(Z)Z

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/fir/sdk/http/AsyncHttpRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/fir/sdk/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/fir/sdk/http/AsyncHttpRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/fir/sdk/http/AsyncHttpRequest;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldBeGarbageCollected()Z
    .locals 2

    invoke-virtual {p0}, Lim/fir/sdk/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/fir/sdk/http/RequestHandle;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lim/fir/sdk/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
