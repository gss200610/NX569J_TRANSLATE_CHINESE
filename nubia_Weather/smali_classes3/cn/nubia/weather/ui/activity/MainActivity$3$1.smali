.class Lcn/nubia/weather/ui/activity/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/MainActivity$3;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/ui/activity/MainActivity$3;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/MainActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/ui/activity/MainActivity$3;

    .prologue
    .line 674
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/MainActivity$3$1;->this$1:Lcn/nubia/weather/ui/activity/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 678
    const-string v0, "WeatherMainActivity"

    const-string v1, "mDataSetObserver"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$3$1;->this$1:Lcn/nubia/weather/ui/activity/MainActivity$3;

    iget-object v0, v0, Lcn/nubia/weather/ui/activity/MainActivity$3;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$500(Lcn/nubia/weather/ui/activity/MainActivity;)V

    .line 680
    return-void
.end method
