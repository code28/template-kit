/// Print debug information about variables
///
///     dump(<item>)
///
public final class Dump: TagRenderer {
    /// See `TagRenderer`.
    public init() {}

    /// See `TagRenderer`.
    public func render(tag: TagContext) throws -> EventLoopFuture<TemplateData> {
        try tag.requireParameterCount(1)

        var dumpString = ""
        debugPrint(tag.parameters[0], to: &dumpString)

        return tag.future(.string(dumpString))
    }
}
