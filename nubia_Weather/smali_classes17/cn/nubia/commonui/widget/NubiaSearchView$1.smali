.class Lcn/nubia/commonui/widget/NubiaSearchView$1;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$1;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 112
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    return-void
.end method
