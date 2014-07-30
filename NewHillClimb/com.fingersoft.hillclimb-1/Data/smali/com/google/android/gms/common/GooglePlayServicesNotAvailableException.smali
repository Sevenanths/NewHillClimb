.class public final Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
.super Ljava/lang/Exception;


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    return-void
.end method
