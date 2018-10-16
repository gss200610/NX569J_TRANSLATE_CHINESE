.class Lcn/nubia/weather/ui/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/MainActivity;->dealWithIntent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 866
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/MainActivity$8;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$8;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$700(Lcn/nubia/weather/ui/activity/MainActivity;)V

    .line 872
    const/4 v0, 0x0

    return v0
.end method
