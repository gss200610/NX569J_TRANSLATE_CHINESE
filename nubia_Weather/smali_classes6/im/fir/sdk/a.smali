.class final Lim/fir/sdk/a;
.super Lim/fir/sdk/callback/FIRResultCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lim/fir/sdk/callback/FIRResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    return-void
.end method

.method public final onFailure(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/fir/sdk/utils/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method
