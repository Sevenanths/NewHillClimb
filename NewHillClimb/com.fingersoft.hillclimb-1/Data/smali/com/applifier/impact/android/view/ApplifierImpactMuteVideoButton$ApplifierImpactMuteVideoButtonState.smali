.class public final enum Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;
.super Ljava/lang/Enum;
.source "ApplifierImpactMuteVideoButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplifierImpactMuteVideoButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

.field public static final enum Muted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

.field public static final enum UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    const-string v1, "UnMuted"

    invoke-direct {v0, v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    new-instance v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    const-string v1, "Muted"

    invoke-direct {v0, v1, v3}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->Muted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->Muted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->ENUM$VALUES:[Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    return-object v0
.end method

.method public static values()[Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->ENUM$VALUES:[Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    array-length v1, v0

    new-array v2, v1, [Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
