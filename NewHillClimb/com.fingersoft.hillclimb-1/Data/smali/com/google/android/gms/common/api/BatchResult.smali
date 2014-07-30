.class public final Lcom/google/android/gms/common/api/BatchResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private final AP:[Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;"
        }
    .end annotation
.end field

.field private final wJ:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "[",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, pendingResults:[Lcom/google/android/gms/common/api/PendingResult;,"[Lcom/google/android/gms/common/api/PendingResult<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/BatchResult;->wJ:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/common/api/BatchResult;->AP:[Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->wJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public take(Lcom/google/android/gms/common/api/BatchResultToken;)Lcom/google/android/gms/common/api/Result;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/BatchResultToken",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .local p1, resultToken:Lcom/google/android/gms/common/api/BatchResultToken;,"Lcom/google/android/gms/common/api/BatchResultToken<TR;>;"
    iget v0, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/BatchResult;->AP:[Lcom/google/android/gms/common/api/PendingResult;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The result token does not belong to this batch"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/BatchResult;->AP:[Lcom/google/android/gms/common/api/PendingResult;

    iget v1, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/common/api/BatchResult;->AP:[Lcom/google/android/gms/common/api/PendingResult;

    iget v2, p1, Lcom/google/android/gms/common/api/BatchResultToken;->mId:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-interface {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
