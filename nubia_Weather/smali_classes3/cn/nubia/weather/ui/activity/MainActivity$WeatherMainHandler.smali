.class public Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherMainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$000(Lcn/nubia/weather/ui/activity/MainActivity;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$100(Lcn/nubia/weather/ui/activity/MainActivity;)Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->notifyDataSetChanged()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
