.class public interface abstract annotation L䲿䲳䲱䳲䲱䲵䳲䲸䲹䲪䲵䲿䲹䳲䲟䲳䲲䲺䲵䲻䲟䲳䲲䲯䲨䲽䲲䲨$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䲿䲳䲱䳲䲱䲵䳲䲸䲹䲪䲵䲿䲹䳲䲟䲳䲲䲺䲵䲻䲟䲳䲲䲯䲨䲽䲲䲨;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation


# static fields
.field public static final g0:Ljava/lang/String;

.field public static final h0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\u2d87\u2dde\u2dcd\u2dc6\u2dcc\u2dc7\u2dda\u2d87\u2dcd\u2ddc\u2dcb\u2d87\u2dcb\u2dc9\u2dc5\u2dcd\u2dda\u2dc9"

    invoke-static {v0}, Lmd/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L䲿䲳䲱䳲䲱䲵䳲䲸䲹䲪䲵䲿䲹䳲䲟䲳䲲䲺䲵䲻䲟䲳䲲䲯䲨䲽䲲䲨$a;->g0:Ljava/lang/String;

    const-string v0, "\u2d87\u2dc7\u2dcc\u2dc5\u2d87\u2dcd\u2ddc\u2dcb\u2d87\u2dcb\u2dc9\u2dc5\u2dcd\u2dda\u2dc9"

    invoke-static {v0}, Lmd/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L䲿䲳䲱䳲䲱䲵䳲䲸䲹䲪䲵䲿䲹䳲䲟䲳䲲䲺䲵䲻䲟䲳䲲䲯䲨䲽䲲䲨$a;->h0:Ljava/lang/String;

    return-void
.end method
