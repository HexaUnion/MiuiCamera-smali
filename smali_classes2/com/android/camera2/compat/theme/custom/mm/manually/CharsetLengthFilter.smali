.class public Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->mMax:I

    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->mCharset:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/z5;->J0:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->getCahrsetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->mCharset:Ljava/nio/charset/Charset;

    :cond_0
    return-void
.end method

.method public static final getCahrsetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/android/camera/z5;->V2()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "GB18030"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0
.end method

.method public static getWordCount(Ljava/lang/String;)I
    .locals 2

    const-string v0, "[^\\x00-\\xff]"

    const-string v1, "**"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static trimLeading(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->trimLeading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->getWordCount(Ljava/lang/String;)I

    move-result p3

    iget p0, p0, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->mMax:I

    sub-int/2addr p6, p5

    sub-int/2addr p3, p6

    sub-int/2addr p0, p3

    const-string p3, ""

    if-gtz p0, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->getWordCount(Ljava/lang/String;)I

    move-result p4

    if-lt p0, p4, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 p4, 0x0

    move p5, p2

    move p6, p5

    :goto_0
    if-ge p5, p0, :cond_3

    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p5, p2, :cond_3

    return-object p3

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->getWordCount(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p4, v0

    if-gt p4, p0, :cond_3

    add-int/lit8 p6, p5, 0x1

    move p5, p6

    goto :goto_0

    :cond_3
    if-ne p6, p2, :cond_4

    return-object p3

    :cond_4
    invoke-interface {p1, p2, p6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/compat/theme/custom/mm/manually/CharsetLengthFilter;->mMax:I

    return p0
.end method
