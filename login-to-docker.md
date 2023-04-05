## Table of contents

### Docker login to Github ghcr.io
1. Create GitHub PAT Token with appropriate permissions
2. Export the token as local machine environment
3. Example ```export CR_PAT=ghp_MP*****```
4. Run this command to login ```echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin```

```BASH
export CR_PAT=ghp_MP*****
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
```

## Login to Windows
if you see this error
```CODE
Error: Cannot perform an interactive login from a non TTY device
```
run **winpty** this instead
```BASH
export CR_PAT=ghp_MP*****
winpty | echo $PAT | docker login ghcr.io -u USERNAME --password-stdin
```
