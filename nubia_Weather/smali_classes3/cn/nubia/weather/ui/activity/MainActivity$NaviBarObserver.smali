.class public Lcn/nubia/weather/ui/activity/MainActivity$NaviBarObserver;
.super Landroid/database/ContentObserver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NaviBarObserver"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/weather/ui/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/MainActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/MainActivity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 828
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/MainActivity$NaviBarObserver;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    .line 829
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 831
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 835
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$NaviBarObserver;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->adjustLayoutByNaviBarStatus()V

    .line 836
    return-void
.end method
