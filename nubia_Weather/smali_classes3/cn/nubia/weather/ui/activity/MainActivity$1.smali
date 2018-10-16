.class Lcn/nubia/weather/ui/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/api/WeatherCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/MainActivity;
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
    .line 207
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/MainActivity$1;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSuccess()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$1;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$300(Lcn/nubia/weather/ui/activity/MainActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcn/nubia/weather/ui/activity/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/MainActivity$1$1;-><init>(Lcn/nubia/weather/ui/activity/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
