import LocalAuthentication

public class RequestBiometry {

    public init() { }

    public func request(completion: @escaping (Bool) -> Void) {
        var authError: NSError?
        let context = LAContext()
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &authError) {
            let reason = "Identify yourself!"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { result, authenticationError in
                completion(result)
                return
            }
        }
        completion(false)
        return
    }

}
